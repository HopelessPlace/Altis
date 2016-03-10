#!/usr/bin/env python

import sys
import glob
import os

def process_addon(addons_file_list):
    _addons = []

    for load_file in addons_file_list.split(" "):
        with open(load_file, "r") as addons_reader:
            for line in addons_reader:
                addon = line.replace('"', '')  \
                            .replace(';', '')  \
                            .replace(' ', '')  \
                            .replace(',', '')  \
                            .replace('\n', '') \
                            .replace('\r', '') \
                            .replace('\t', '')

                if addon <> '':
                    if addon not in _addons:
                        _addons.append('"%s"' % addon)

    return _addons


#
# load files that already have an item counter inside of them and only need to be patched in here
#
def load_precooked(load_file):
    _text = []
    with open(load_file, "r") as file_reader:
        for line in file_reader:
            _text.append(line)

    return _text


#
# this is the heart of our script: load all vehicle files and recalculate the itemID and the item counter :)
#
def load_and_calculate_itemcount(file_list, first_itemid):
    _text = []
    _items = []
    _item_counter = 0;
    _itemid_counter = int(first_itemid);

    _text.append("//\n")
    _text.append("// XOXODEBUG %s:load_and_calculate_itemcount(%s, %s)\n" % (sys.argv[0], file_list, first_itemid))
    _text.append("//\n")

    for load_file in file_list.split(" "):

        _text.append("""
                //
                // WARNING WARNING WARNING
                //
                // AUTOGENERATED CODE
                //
                // DO NOT MODIFY THIS CODE
                //
                // WARNING WARNING WARNING
                //
                // Begin of parsing "%s"
                //
""" % load_file)

        with open(load_file, "r") as file_reader:
            for line in file_reader:

                _itemid_patched = line

                #
                # try to patch the id= property in the class Item
                #
                if line.find("id=") > 0:
                    for i in range(5000):
                        if line.find("id=%s;" % i) > 0:
                            _itemid_patched = line.replace("id=%s;" % i , "id=%s;" % _itemid_counter)
                            _itemid_counter = _itemid_counter + 1

                _item_patched = _itemid_patched

                #
                # try to patch the classname of the Item from class Item0 to class ItemX where X is managed by us
                #
                if line.find("class Item") > 0:
                    for j in range(5000):
                        if line.find("class Item%s{" % j) > 0:
                            _item_patched = _itemid_patched.replace("class Item%s{" % j, "class Item%s{" % _item_counter)
                            _item_counter = _item_counter + 1

                        if line.find("class Item%s\n" % j) > 0:
                            _item_patched = _itemid_patched.replace("class Item%s\n" % j, "class Item%s\n" % _item_counter)
                            _item_counter = _item_counter + 1

                        if line.find("class Item%s\r" % j) > 0:
                            _item_patched = _itemid_patched.replace("class Item%s\r" % j, "class Item%s\r" % _item_counter)
                            _item_counter = _item_counter + 1

                        if line.find("class Item%s\t" % j) > 0:
                            _item_patched = _itemid_patched.replace("class Item%s\t" % j, "class Item%s\t" % _item_counter)
                            _item_counter = _item_counter + 1

                        if line.find("class Item%s " % j) > 0:
                            _item_patched = _itemid_patched.replace("class Item%s " % j, "class Item%s " % _item_counter)
                            _item_counter = _item_counter + 1

                _text.append(_item_patched)

        _text.append("""
                //
                // WARNING WARNING WARNING
                //
                // AUTOGENERATED CODE
                //
                // DO NOT MODIFY THIS CODE
                //
                // WARNING WARNING WARNING
                //
                // End of parsing "%s"
                //
""" % load_file)

    _text.append("//\n")
    _text.append("// XOXODEBUG %s:load_and_calculate_itemcount(%s, %s)\n" % (sys.argv[0], file_list, first_itemid))
    _text.append("//\n")

    _text.append("""

                //
                // GENERATOR SCRIPT: %s
                //
                // This item counter has been autogenerated from the following files:
                //
                // %s
                //
                // DO NOT MODIFY THIS NUMBER.
                //
                // If you want to add vehicles to this list then change the source files and run the generator again!
                //
                items=%s;

""" % (sys.argv[0], file_list.split(", "), _item_counter))

    return _text

#
# main function
#
# here is where the party happens.
#
if __name__ == "__main__":
    output = []

    addons = process_addon(sys.argv[2])
    addonsauto = process_addon(sys.argv[3])

    classgroups = load_precooked(sys.argv[4])
    classmarkers = load_precooked(sys.argv[5])

    classvehicles = load_and_calculate_itemcount(sys.argv[6], sys.argv[7])

    with open (sys.argv[1], "r") as mission_sqm:
        for line in mission_sqm.readlines():
            output.append(line \
                .replace("%%%ADDONS%%%", ", ".join(sorted(addons))) \
                .replace("%%%ADDONSAUTO%%%", ", ".join(addonsauto)) \
                .replace("%%%CLASSGROUPS%%%", "".join(classgroups)) \
                .replace("%%%CLASSVEHICLES%%%", "".join(classvehicles)) \
                .replace("%%%CLASSMARKERS%%%", "".join(classmarkers)) \
                .rstrip()
            )

	#
	# load the macros
	#
	macros = {}
	
	macro_directory = sys.argv[8];
	
	os.chdir(macro_directory)
	
	for filename in glob.glob("*.txt"):
		with open (filename, "r") as macro_file:
			macros[filename] = macro_file.read().replace('\n', ' ').replace('\r', ' ')
	
    #
    # print the whole output after parsing all the macro placeholders
	#
	# this is the mission.sqm that your server will use
    #
    for line in output:
		input_line = line
		
		for key in macros:
			output_line = input_line.replace('XOXO_MACRO_%s_XOXO_MACRO' % key, macros[key])
			input_line = output_line
		
		print output_line
