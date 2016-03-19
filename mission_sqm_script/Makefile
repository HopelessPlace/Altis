BAUPROJEKT1 = ../Bauprojekte/Zivilisten/Athira/Markt/mission.sqm

BAUPROJEKT2 = ../Bauprojekte/Feuerwehr/Athira/Krankenhaus/mission.sqm

BAUPROJEKT3 = ../Bauprojekte/Rebellen/Drimea/Checkpoint/mission.sqm

BAUPROJEKT4 = ../Bauprojekte/Rebellen/Thronos/Base/mission.sqm

BAUPROJEKT5 = ../Bauprojekte/Zivilisten/Kavalla/Markt/mission.sqm

BAUPROJEKT6 = ../Bauprojekte/Rebellen/Atsalis/Base/mission.sqm

MACROS = ./macros

FIRST_ID_CLASS_VEHICLES = 260

all: bauprojekte Lampen_einschalten merge merge_ohne_Bauprojekte

bauprojekte:
	cat bin/slice.sh | tr -d '\r' | tee bin/.slice_CRLF_sucks.sh
	chmod 0755 bin/.slice_CRLF_sucks.sh
	./bin/.slice_CRLF_sucks.sh $(BAUPROJEKT1) | tee tmp/Zivilisten_Athira_Markt.txt
	./bin/.slice_CRLF_sucks.sh $(BAUPROJEKT2) | tee tmp/Feuerwehr_Athira_Krankenhaus.txt
	./bin/.slice_CRLF_sucks.sh $(BAUPROJEKT3) | tee tmp/Rebellen_Drimea_Checkpoint.txt
	./bin/.slice_CRLF_sucks.sh $(BAUPROJEKT4) | tee tmp/Rebellen_Thronos_Base.txt
	./bin/.slice_CRLF_sucks.sh $(BAUPROJEKT5) | tee tmp/Zivilisten_Kavala_Markt.txt
	./bin/.slice_CRLF_sucks.sh $(BAUPROJEKT6) | tee tmp/Rebellen_Atsalis_Base.txt

Lampen_einschalten:
	cat bin/lamps.sh | tr -d '\r' | tee bin/.lamps_CRLF_sucks.sh
	chmod 0755 bin/.lamps_CRLF_sucks.sh
	./bin/.lamps_CRLF_sucks.sh tmp/Zivilisten_Athira_Markt.txt | tee tmp2/Zivilisten_Athira_Markt.txt
	./bin/.lamps_CRLF_sucks.sh tmp/Feuerwehr_Athira_Krankenhaus.txt | tee tmp2/Feuerwehr_Athira_Krankenhaus.txt
	./bin/.lamps_CRLF_sucks.sh tmp/Rebellen_Drimea_Checkpoint.txt | tee tmp2/Rebellen_Drimea_Checkpoint.txt
	./bin/.lamps_CRLF_sucks.sh tmp/Rebellen_Thronos_Base.txt | tee tmp2/Rebellen_Thronos_Base.txt
	./bin/.lamps_CRLF_sucks.sh tmp/Zivilisten_Kavala_Markt.txt | tee tmp2/Zivilisten_Kavala_Markt.txt
	./bin/.lamps_CRLF_sucks.sh tmp/Rebellen_Atsalis_Base.txt | tee tmp2/Rebellen_Atsalis_Base.txt

merge:
	@chmod 0755 bin/glue.py
	@bin/glue.py \
		"configs/mission.sqm.skel.txt" \
		"configs/addOns.skel.txt" \
		"configs/addOnsAuto.skel.txt" \
		"configs/classgroups.skel.txt" \
		"configs/classmarkers.skel.txt" \
		"configs/classvehicles.skel.txt $(shell ls tmp2/*.txt)" "$(FIRST_ID_CLASS_VEHICLES)" "$(MACROS)" | \
			tee ../Altis_Life.Altis/mission.sqm

merge_ohne_Bauprojekte:
	@chmod 0755 bin/glue.py
	@bin/glue.py \
		"configs/mission.sqm.skel.txt" \
		"configs/addOns.skel.txt" \
                "configs/addOnsAuto.skel.txt" \
                "configs/classgroups.skel.txt" \
                "configs/classmarkers.skel.txt" \
                "configs/classvehicles.skel.txt" "$(FIRST_ID_CLASS_VEHICLES)" "$(MACROS)" | \
                        tee ../Altis_Life.Altis/mission_vanilla.sqm

