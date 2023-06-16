#include <sourcemod>
#include <sdktools>

#pragma semicolon 1
#pragma newdecls required

public Plugin myinfo = {
	name = "LennyDB",
	author = "JackHasaKeyboard",
	description = "( ͡° ͜ʖ ͡°)",
	version = "1.0",
	url = ""
};

public void OnPluginStart() {
	PrintToServer("LennyDB loaded... ( ͡° ͜ʖ ͡°)");

	RegConsoleCmd("lenny", MkMenu, "( ͡° ͜ʖ ͡°)");
}

public Action MkMenu(int client, int args) {
	Menu menu = new Menu(MenuCallback);

	menu.SetTitle("( ͡° ͜ʖ ͡°)");

	menu.AddItem("main", "( ͡° ͜ʖ ͡°)");
	menu.AddItem("nose", "( ͡° ل͜ ͡°)");
	menu.AddItem("blush", "(˵ ͡° ͜ʖ ͡°˵)");
	menu.AddItem("perturbed", "( ͠° ͟ʖ ͠°)");
	menu.AddItem("wide_eyed", "( ͡ʘ ͜ʖ ͡ʘ)");
	menu.AddItem("stronk", "ᕕ( ͡° ͜ʖ ͡°)ᕗ");
	menu.AddItem("point", "(☞ ͡° ͜ʖ ͡°)☞");
	menu.AddItem("gaggle", "( ͡°( ͡° ͜ʖ( ͡° ͜ʖ ͡°)ʖ ͡°) ͡°)");
	menu.AddItem("bear", "ʕ◉ᴥ◉ʔ");
	menu.AddItem("dolla", "[̲̅$̲̅(̲̅ ͡° ͜ʖ ͡°̲̅)̲̅$̲̅]");
	menu.AddItem("idk", "ʕ ͡oム͜͜ ⊙ヾ )>");

	return Plugin_Handled;
}

public int MenuCallback(Menu menu, MenuAction action, int param0, int param1) {
	switch (action) {
		case MenuAction_Select: {
			char item[32];
			menu.GetItem(param1, item, sizeof (item));

			if (StrEqual(item, "main")) {
				PrintToServer("( ͡° ͜ʖ ͡°)");
			}

			if (StrEqual(item, "nose")) {
				PrintToServer("( ͡° ل͜ ͡°)");
			}

			if (StrEqual(item, "blush")) {
				PrintToServer("(˵ ͡° ͜ʖ ͡°˵)");
			}

			if (StrEqual(item, "perturbed")) {
				PrintToServer("( ͠° ͟ʖ ͠°)");
			}

			if (StrEqual(item, "wide_eyed")) {
				PrintToServer("( ͡ʘ ͜ʖ ͡ʘ)");
			}

			if (StrEqual(item, "stronk")) {
				PrintToServer("ᕕ( ͡° ͜ʖ ͡°)ᕗ");
			}

			if (StrEqual(item, "point")) {
				PrintToServer("(☞ ͡° ͜ʖ ͡°)☞");
			}

			if (StrEqual(item, "gaggle")) {
				PrintToServer("( ͡°( ͡° ͜ʖ( ͡° ͜ʖ ͡°)ʖ ͡°) ͡°)");
			}

			if (StrEqual(item, "bear")) {
				PrintToServer("ʕ◉ᴥ◉ʔ");
			}

			if (StrEqual(item, "dolla")) {
				PrintToServer("[̲̅$̲̅(̲̅ ͡° ͜ʖ ͡°̲̅)̲̅$̲̅]");
			}

			if (StrEqual(item, "dolla")) {
				PrintToServer("ʕ ͡oム͜͜ ⊙ )>");
			}
		}

		case MenuAction_End: {
		 	delete menu;
		}
	}

	return 1;
}
