if Config.NewESX then 
    ESX = exports["es_extended"]:getSharedObject()
end

RegisterServerEvent('angelo_jobcenter:getjob')
AddEventHandler('angelo_jobcenter:getjob', function(jobName)
    local xPlayer = ESX.GetPlayerFromId(source)
    xPlayer.setJob(jobName, Config.JobCenterInteract.job_grade)
end)