--
-- DO NOT DELETE
--
-- SETTINGS MODULE
-- Made by Redsaph exclusively for 360 Music
-- Imported from Cleartext
--
-- redsaph.ml
--
-- If you have read this and have the intention
-- of using this, please do not delete this flower box
-- and just append on it.
--
-- Thank you very much.
--
-- Last modified by Redsaph on October 25, 2017
--

playerTable = {
	["Windows Media Player"] = {
		playerController = "Title0",
		musicSwitch = "0",
		player = "WMP"
	},
	["Foobar2000"] = {
		playerController = "Title0",
		musicSwitch = "0",
		player = "CAD"
	},
	["MusicBee"] = {
		playerController = "Title0",
		musicSwitch = "0",
		player = "CAD"
	},
	["Spotify"] = {
		playerController = "Title0",
		musicSwitch = "1",
		player = "Spotify"
	},
	["iTunes"] = {
		playerController = "Title0",
		musicSwitch = "0",
		player = "iTunes"
	},
	["VLC"] = {
		playerController = "Title0",
		musicSwitch = "0",
		player = "CAD"
	},
	["WebNowPlaying"] = {
		playerController = "StateButton2",
		musicSwitch = "2",
		player = "WMP"
	},
	["MediaMonkey"] = {
		playerController = "Title0",
		musicSwitch = "0",
		player = "MediaMonkey"
	},
	["Media Player Classic"] = {
		playerController = "Title0",
		musicSwitch = "0",
		player = "WLM"
	},
	["J. River Media Center"] = {
		playerController = "Title0",
		musicSwitch = "0",
		player = "CAD"
	},
	["Winamp"] = {
		playerController = "Title0",
		musicSwitch = "0",
		player = "Winamp"
	},
	["Zune"] = {
		playerController = "Title0",
		musicSwitch = "0",
		player = "WLM"
	},
	["AIMP"] = {
		playerController = "Title0",
		musicSwitch = "0",
		player = "AIMP"
	}
}

function setPlayer(currentlySet)
	SKIN:Bang('!WriteKeyValue Variables musicSwitch ' .. playerTable[currentlySet]['musicSwitch'] .. ' "#@#variables.inc"')
	SKIN:Bang('!WriteKeyValue Variables playerController ' .. playerTable[currentlySet]['playerController'] .. ' "#@#variables.inc"')
	SKIN:Bang('!WriteKeyValue Variables Player ' .. playerTable[currentlySet]['player'] .. ' "#@#variables.inc"')
	SKIN:Bang('!WriteKeyValue Variables currentlySet "' .. currentlySet .. '" "#@#variables.inc"')
	SKIN:Bang('!UpdateMeter "playerTextDialogSubtitle" "Settings.ini"')
	SKIN:Bang('!Redraw "360Music/Settings" "Settings.ini"')
end -- ends setPlayer

function refresh360Music()
	SKIN:Bang('!Refresh #CURRENTCONFIG#')
	
	SKIN:Bang('!HideMeterGroup resizeDialog')
	SKIN:Bang('!HideMeterGroup changeFontDialog')
	SKIN:Bang('!HideMeterGroup themeDialog')
	SKIN:Bang('!HideMeterGroup adaptiveDialog')
	SKIN:Bang('!HideMeterGroup playerDialog')
	SKIN:Bang('!HideMeterGroup autoColorDialog')
	SKIN:Bang('!ShowMeterGroup buttons')
	SKIN:Bang('!HideMeterGroup dialogDesign')
	SKIN:Bang('!DisableMeasure "mInput"')
	SKIN:Bang('!Refresh #CURRENTCONFIG#')
	SKIN:Bang('!Refresh "360Music" "360Music.ini"')
	SKIN:Bang('!Redraw "360Music" "360Music.ini"')
	
end -- ends refresh360Music