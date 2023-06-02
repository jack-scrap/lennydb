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

	RegConsoleCmd("lenny", PrintLenny, "( ͡° ͜ʖ ͡°)");
	RegConsoleCmd("mk_menu", MkMenu, "( ͡° ͜ʖ ͡°)");
}

public Action PrintLenny(int client, int args) {
	PrintToChat(client, "( ͡° ͜ʖ ͡°)");

	return Plugin_Handled;
}

public Action MkMenu(int client, int args) {
	Menu menu = new Menu(MenuCallback);

	menu.SetTitle("( ͡° ͜ʖ ͡°)");

	menu.AddItem("( ͡° ͜ʖ ͡°)", "( ͡° ͜ʖ ͡°)");
	menu.AddItem("( ͡° ل͜ ͡°)", "( ͡° ل͜ ͡°)");
	menu.AddItem("(˵ ͡° ͜ʖ ͡°˵)", "(˵ ͡° ͜ʖ ͡°˵)");
	menu.AddItem("( ͠° ͟ʖ ͠°)", "( ͠° ͟ʖ ͠°)");
	menu.AddItem("( ͡ʘ ͜ʖ ͡ʘ)", "( ͡ʘ ͜ʖ ͡ʘ)");
	menu.AddItem("ᕕ( ͡° ͜ʖ ͡°)ᕗ", "ᕕ( ͡° ͜ʖ ͡°)ᕗ");
	menu.AddItem("(☞ ͡° ͜ʖ ͡°)☞", "(☞ ͡° ͜ʖ ͡°)☞");
	menu.AddItem("( ͡°( ͡° ͜ʖ( ͡° ͜ʖ ͡°)ʖ ͡°) ͡°)", "( ͡°( ͡° ͜ʖ( ͡° ͜ʖ ͡°)ʖ ͡°) ͡°)");
	menu.AddItem("ʕ◉ᴥ◉ʔ", "ʕ◉ᴥ◉ʔ");
	menu.AddItem("[̲̅$̲̅(̲̅ ͡° ͜ʖ ͡°̲̅)̲̅$̲̅]", "[̲̅$̲̅(̲̅ ͡° ͜ʖ ͡°̲̅)̲̅$̲̅]");

	menu.Display(client, 3);

	return Plugin_Handled;
}

public int MenuCallback(Menu menu, MenuAction action, int param0, int param1) {
	switch (action) {
		case MenuAction_Select: {
			char item[32];
			menu.GetItem(param1, item, sizeof (item));

			if (StrEqual(item, "( ͡° ͜ʖ ͡°)")) {
				PrintToServer("( ͡° ͜ʖ ͡°)");
			}

			if (StrEqual(item, "( ͡° ل͜ ͡°)")) {
				PrintToServer("( ͡° ل͜ ͡°)");
			}

			if (StrEqual(item, "(˵ ͡° ͜ʖ ͡°˵)")) {
				PrintToServer("(˵ ͡° ͜ʖ ͡°˵)");
			}

			if (StrEqual(item, "( ͠° ͟ʖ ͠°)")) {
				PrintToServer("( ͠° ͟ʖ ͠°)");
			}

			if (StrEqual(item, "( ͡ʘ ͜ʖ ͡ʘ)")) {
				PrintToServer("( ͡ʘ ͜ʖ ͡ʘ)");
			}

			if (StrEqual(item, "ᕕ( ͡° ͜ʖ ͡°)ᕗ")) {
				PrintToServer("ᕕ( ͡° ͜ʖ ͡°)ᕗ");
			}

			if (StrEqual(item, "(☞ ͡° ͜ʖ ͡°)☞")) {
				PrintToServer("(☞ ͡° ͜ʖ ͡°)☞");
			}

			if (StrEqual(item, "( ͡°( ͡° ͜ʖ( ͡° ͜ʖ ͡°)ʖ ͡°) ͡°)")) {
				PrintToServer("( ͡°( ͡° ͜ʖ( ͡° ͜ʖ ͡°)ʖ ͡°) ͡°)");
			}

			if (StrEqual(item, "ʕ◉ᴥ◉ʔ")) {
				PrintToServer("ʕ◉ᴥ◉ʔ");
			}

			if (StrEqual(item, "[̲̅$̲̅(̲̅ ͡° ͜ʖ ͡°̲̅)̲̅$̲̅]")) {
				PrintToServer("[̲̅$̲̅(̲̅ ͡° ͜ʖ ͡°̲̅)̲̅$̲̅]");
			}
		}

		case MenuAction_End: {
		 	delete menu;
		}
	}

	return 1;
}
