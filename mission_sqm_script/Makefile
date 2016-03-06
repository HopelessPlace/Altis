BAUPROJEKT1 = ../Bauprojekte/Zivilisten/Athira/Markt/mission.sqm

BAUPROJEKT2 = ../Bauprojekte/Feuerwehr/Athira/Krankenhaus/mission.sqm

BAUPROJEKTE = $(BAUPROJEKT1) $(BAUPROJEKT2)

FIRST_ID_CLASS_VEHICLES = 236

all: bauprojekte merge

bauprojekte:
	./bin/slice.sh $(BAUPROJEKT1) | tee tmp/Zivilisten_Athira_Markt.txt
	./bin/slice.sh $(BAUPROJEKT2) | tee tmp/Feuerwehr_Athira_Krankenhaus.txt

merge:
	@bin/glue.py \
		"configs/mission.sqm.skel.txt" \
		"configs/addOns.skel.txt ../Bauprojekte/Rebellen/Drimea/Checkpoint/addons.txt" \
		"configs/addOnsAuto.skel.txt ../Bauprojekte/Rebellen/Drimea/Checkpoint/addons.txt" \
		"configs/classgroups.skel.txt" \
		"configs/classmarkers.skel.txt" \
		"configs/classvehicles.skel.txt $(shell ls tmp/*.txt)" "$(FIRST_ID_CLASS_VEHICLES)" | \
			tee ../Altis_Life.Altis/mission.sqm

