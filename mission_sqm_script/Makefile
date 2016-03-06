BAUPROJEKT1 = ../Bauprojekte/Zivilisten/Athira/Markt/mission.sqm

BAUPROJEKT2 = ../Bauprojekte/Feuerwehr/Athira/Krankenhaus/mission.sqm

BAUPROJEKT3 = ../Bauprojekte/Rebellen/Drimea/Checkpoint/mission.sqm

FIRST_ID_CLASS_VEHICLES = 236

all: bauprojekte Lampen_einschalten merge

bauprojekte:
	./bin/slice.sh $(BAUPROJEKT1) | tee tmp/Zivilisten_Athira_Markt.txt
	./bin/slice.sh $(BAUPROJEKT2) | tee tmp/Feuerwehr_Athira_Krankenhaus.txt
	./bin/slice.sh $(BAUPROJEKT3) | tee tmp/Rebellen_Drimea_Checkpoint.txt

Lampen_einschalten:
	./bin/lamps.sh tmp/Zivilisten_Athira_Markt.txt | tee tmp2/Zivilisten_Athira_Markt.txt
	./bin/lamps.sh tmp/Feuerwehr_Athira_Krankenhaus.txt | tee tmp2/Feuerwehr_Athira_Krankenhaus.txt
	./bin/lamps.sh tmp/Rebellen_Drimea_Checkpoint.txt | tee tmp2/Rebellen_Drimea_Checkpoint.txt

merge:
	@bin/glue.py \
		"configs/mission.sqm.skel.txt" \
		"configs/addOns.skel.txt" \
		"configs/addOnsAuto.skel.txt" \
		"configs/classgroups.skel.txt" \
		"configs/classmarkers.skel.txt" \
		"configs/classvehicles.skel.txt $(shell ls tmp2/*.txt)" "$(FIRST_ID_CLASS_VEHICLES)" | \
			tee ../Altis_Life.Altis/mission.sqm

