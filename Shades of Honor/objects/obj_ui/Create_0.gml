if room = rm_start or room = rm_begining
{
	audio_stop_sound(snd_midBackground)
	audio_stop_sound(snd_startBackground)
	audio_stop_sound(snd_bossBackground)
	audio_play_sound(snd_startBackground, 10, true)
}
else if room = rm_mid
{
	audio_stop_sound(snd_startBackground)
	audio_stop_sound(snd_bossBackground)
	audio_play_sound(snd_midBackground, 10, true)
}
else if room = rm_boss
{
	audio_stop_sound(snd_startBackground)
	audio_stop_sound(snd_midBackground)
	audio_play_sound(snd_bossBackground, 10, true)
}
