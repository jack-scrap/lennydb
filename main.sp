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
}

public Action PrintLenny(int client, int args) {
	PrintToChat(client, "( ͡° ͜ʖ ͡°)");

	return Plugin_Handled;
}
