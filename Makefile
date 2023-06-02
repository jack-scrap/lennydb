SVDIR=~/.steam/steamcmd/tf2/tf/addons/sourcemod

SPC=$(SVDIR)/scripting/spcomp

EXEC=lennydb.smx

SRC=main.sp

.PHONY: all
all: $(EXEC)

$(EXEC): $(SRC)
	$(SPC) $< -o $@

.PHONY: install
install:
	cp $(EXEC) $(SVDIR)/plugins

.PHONY: uninstall
uninstall:
	rm $(SVDIR)/plugins/$(EXEC)

.PHONY: clean
clean:
	rm $(EXEC)
