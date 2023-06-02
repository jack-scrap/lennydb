SPC=~/.steam/steamcmd/tf2/tf/addons/sourcemod/scripting/spcomp

EXEC=lennydb.smx

SRC=main.sp

.PHONY: all
all: $(EXEC)

$(EXEC): $(SRC)
	$(SPC) $< -o $@

.PHONY: clean
clean:
	rm $(EXEC)
