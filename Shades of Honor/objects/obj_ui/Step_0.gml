if room_get_name(room) == rm_boss {
	audio_stop_sound(snd_startBackground)
	audio_stop_sound(snd_midBackground)
}
else if room_get_name(room) == rm_start
{
	audio_stop_sound(snd_midBackground)
	audio_stop_sound(snd_bossBackground)
}
else if room_get_name(room) == rm_mid
{
	audio_stop_sound(snd_startBackground)
	audio_stop_sound(snd_bossBackground)
}