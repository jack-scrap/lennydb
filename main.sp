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

	RegConsoleCmd("lenny", Command_Test, "( ͡° ͜ʖ ͡°)");
}

public Action Command_Test(int client, int args) {
	PrintToChat(client, "( ͡° ͜ʖ ͡°)");
}
