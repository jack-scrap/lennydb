#include <sourcemod>
#include <sdktools>

#pragma semicolon 1
#pragma newdecls required

public Plugin myinfo = {
	name = "asdf",
	author = "asdf",
	description = "asdf",
	version = "1.0",
	url = ""
};

public void OnPluginStart() {
	PrintToServer("LennyDB loaded... ( ͡° ͜ʖ ͡°)");

	RegConsoleCmd("sm_test", Command_Test, "asdf");
}

public Action Command_Test(int client, int args) {
	PrintToChat(client, "asdf");
}
