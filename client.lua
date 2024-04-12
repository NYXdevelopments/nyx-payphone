local QBCore = exports['qb-core']:GetCoreObject()

function ShowPayPhone()
    Wait(100)
    SendNUIMessage({action = 'showPayPhone', numberlimit = 10})
    SetNuiFocus(true, true)
end

 RegisterNetEvent("nyx-payphone:showpphone", function()
    ShowPayPhone()
end)

function HidePayPhone()
    Wait(100)
    SendNUIMessage({action = 'hidePayPhone'})
    SetNuiFocus(false, false)
end

local PublicPhoneobject = {
    -2103798695,1158960338,
    1281992692,1511539537,
    295857659,-78626473,
    -1559354806
}

function IsPlayerNearPublicPhone(playerCoords)
    local nearPublicPhone = false
    for _, objectHash in ipairs(PublicPhoneobject) do
        local objectCoords = GetEntityCoords(GetClosestObjectOfType(playerCoords, 5.0, objectHash, false, false, false), false)
        if objectCoords then
            local distance = #(playerCoords - objectCoords)
            if distance < 10.0 then -- Adjust the distance as needed
                nearPublicPhone = true
                break
            end
        end
    end
    return nearPublicPhone
end

RegisterCommand("hideui", function()
    SendNUIMessage({action = 'hidePayPhone'})
    SetNuiFocus(false, false)
end, false)

RegisterNUICallback('dialnumber', function(data, cb)
    SetNuiFocus(false, false)

    if not data or not data.number then
        print("Invalid phone number")
        cb('error')
        return
    end

    local calldata = {
        number = data.number,
        name = data.number 
    }
    HidePayPhone()
    exports['qb-phone']:CallContact(calldata, true)

    cb('ok')
end)


RegisterNUICallback('escape', function(_, cb)
    HidePayPhone()
    cb("ok")
end)