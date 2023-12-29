local jobcenterPoint = lib.points.new({
    coords = Config.JobCenterInteract.coords,
    distance = Config.JobCenterInteract.distance,
})

function jobcenterPoint:nearby()
	if Config.DrawMarker then 
    DrawMarker(2, self.coords.x, self.coords.y, self.coords.z+2, 0.0, 0.0, 0.0, 0.0, 180.0, 0.0, 1.0, 1.0, 1.0, 200, 20, 20, 50, false, true, 2, false, nil, nil, false)
	end 

    if self.currentDistance < Config.JobCenterInteract.distance and IsControlJustReleased(0, Config.JobCenterInteract.key) then
        SetNuiFocus(true,true)
        SendNUIMessage({
			type = "NuiJOBS",
            jobs = Config.Jobs
		})
    end
end

RegisterNUICallback('getjob', function(data)
	if Config.NotifyEnabled then 
	NotifyClient("CENTRO DE TRABAJOS", "Tines un nuevo trabajo", "success")
	end
	TriggerServerEvent("angelo_jobcenter:getjob", data.data)
end)

RegisterNUICallback('nuioff', function(data)
	SetNuiFocus(false,false)
end)