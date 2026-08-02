SRCROOT   = .
STEAM_DIR = /mnt/data/steam/debian-installation
CFG_DIR   = $(STEAM_DIR)/steamapps/common/Counter-Strike\ Global\ Offensive/game/csgo/cfg

cfgs = $(wildcard $(SRCROOT)/*.cfg)
dsts = $(patsubst $(SRCROOT)/%,$(CFG_DIR)/%,$(cfgs))

.PHONY: install
install: $(dsts)
$(CFG_DIR)/%: $(SRCROOT)/%
	install -Dm 775 $< "$@"
