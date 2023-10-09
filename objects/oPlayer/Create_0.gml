/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor
tempo = 0
quadros=0
sprites[0] = sIdle
sprites[1] = sLeft
sprites[2] = sRight
sprites[3] = sBack
sprites[4] = sFront

audio_play_sound(MainSong,0, false)
alarm[0] = 1800
global.enemytodestroy= instance_number(oEnemyGun)


coins= instance_number(oCoin)
