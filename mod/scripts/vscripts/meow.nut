untyped
global function meow_Init


void function meow_Init() {
	#if SERVER
    AddCallback_OnReceivedSayTextMessage( CustomChat )
	#endif
}

#if SERVER

ClServer_MessageStruct function CustomChat(ClServer_MessageStruct message)
{
	message.message = StringReplace( "\x1b[38;5;218m" + message.message + " meow~\x1b[0m", "yes", "no", true, true)
	return message
}
#endif