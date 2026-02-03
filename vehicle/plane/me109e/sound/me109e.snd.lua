local soundsetutil = require "::/scripts/soundsetutil.lua"

function data()

local data = soundsetutil.makeSoundSet()

soundsetutil.addTrackParam01(data, "me109/_aircraft_prop_109_idle.wav", 25.0,
		{ { 0.0, 0.5 }, { 0.5, 1.0 }, { 1.0, 0.15 } },
		{ { 0.05, 0.8 }, { 1.0, 1.5 } }, {"vehicle", "power01"})

soundsetutil.addTrackParam01(data, "me109/_aircraft_prop_109_power.wav", 25.0,
		{ { 0.3, 0.0 }, { 0.6, 0.9 }, { 1.0, 1.0 } },
		{ { 0.3, 0.8 }, { 0.6, 0.8 }, { 1.0, 1.1 } }, {"vehicle", "power01"})

soundsetutil.addTrackParam01(data, "me109/_aircraft_prop_109_distant.wav", 100.0,
		{ { 0.5, 0.0 }, { 0.9, 0.3 } },
		{ { 0, 1.0 } }, {"vehicle", "power01"})

soundsetutil.addEvent(data, "land", { "me109/_aircraft_prop_old_land.wav" }, 25.0)

return data

end
