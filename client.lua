local parachuteModel = GetHashKey("parachute")

Citizen.CreateThread(function()
    while not HasModelLoaded(parachuteModel) do
        RequestModel(parachuteModel)
        Citizen.Wait(0)
    end

    -- Replace the parachute texture with the one you want
    local chuteTexture = "parachute_texture.png"
    SetParachuteTextureVariation(parachuteModel, chuteTexture)
end)
