#define TITLE_SCREENS_PATH "config/title_screens/images/"
#define MUSIC_PATH "config/lobby_music/"

SUBSYSTEM_DEF(lobby)
	name = "Lobby Art"
	init_order = SS_INIT_LOBBYART
	flags   = SS_NO_FIRE
	var/list/lobby_arts = list()
	var/list/lobby_music = list()

/datum/controller/subsystem/lobby/Initialize()

	lobby_arts = fill_title_images_pool()
	if(length(lobby_arts))
		force_lobby_art(rand(1, length(lobby_arts)))

	lobby_music = fill_music_pool()
	if(length(lobby_music))
		var/key = SAFEPICK(lobby_music)
		if(key)
			SSticker.login_music = file(lobby_music[key])
	return SS_INIT_SUCCESS

/datum/controller/subsystem/lobby/proc/fill_title_images_pool()
	for(var/file_name in flist(TITLE_SCREENS_PATH))
		lobby_arts = file_name

/datum/controller/subsystem/lobby/proc/fill_music_pool()
	for(var/file_name in flist(MUSIC_PATH))
		lobby_music = file_name

#undef TITLE_SCREENS_PATH
#undef MUSIC_PATH
