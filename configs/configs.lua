Config = {}

-- Core Config
Config.NewESX = true
Config.NotifyEnabled = true
Config.Credits = true 

Config.BlipEnabled = true

Config.Blips = {
    {title="Oficina De Empleo", colour=3, id=407, scale = 1.0, x = 264.4960, y = -964.4634, z = 31.2235}, 
}

Config.displayText = true 
Config.displayDistance = 5.0 
Config.displayColor = "~p~"
Config.Peds = {
    {-264.49, -964.57, 31.22, 206.16, 0x47E4EEA0,"ig_andreas", "TRABAJOS DISPONIBLES", "mini@strip_club@idles@bouncer@base", "base"}
}

Config.DrawMarker = true 

Config.JobCenterInteract = {
	coords = vector3(-264.49, -964.57, 31.22),
	distance = 2.0,
	key = 38,
	job_grade = 0,--Normaly grade in servers
}