KLAYOUT = klayout -zz -e -j . -r
VPATH = ./layouts


m2_%.oas: configs/m2_%.csv ./src/m2.py
	mkdir -p layouts
	$(KLAYOUT) $(word 2,$+) -rd csv_file=$< -rd dest=./layouts -rd outOAS=$@ -rd outLayer=1/0