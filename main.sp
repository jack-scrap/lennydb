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
		}

		case MenuAction_End: {
		 	delete menu;
		}
	}

	return 1;
}
