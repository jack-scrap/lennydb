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
	RegConsoleCmd("mk_menu", MkMenu, "asdf");
}

public Action PrintLenny(int client, int args) {
	PrintToChat(client, "( ͡° ͜ʖ ͡°)");

	return Plugin_Handled;
}

public Action MkMenu(int client, int args) {
	Menu menu = new Menu(MenuCallback);

	menu.SetTitle("asdf");

	menu.AddItem("asdf", "asdf");
	menu.AddItem("hjkl", "hjkl");

	menu.Display(client, 3);

	return Plugin_Handled;
}

public int MenuCallback(Menu menu, MenuAction action, int param0, int param1) {
	switch (action) {
		case MenuAction_Select: {
			char item[32];
			menu.GetItem(param1, item, sizeof (item));

			if (StrEqual(item, "asdf")) {
				PrintToServer("asdf");
			}

			if (StrEqual(item, "hjkl")) {
				PrintToServer("hjkl");
			}
		}

		case MenuAction_End: {
		 	delete menu;
		}
	}

	return 1;
}
