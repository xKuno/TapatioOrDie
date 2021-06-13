function AddTextEntry(key, value)
	Citizen.InvokeNative(GetHashKey("ADD_TEXT_ENTRY"), key, value)
end

Citizen.CreateThread(function()

    AddTextEntry("chiron", "Police Chiron")  --1 
    AddTextEntry("dodgeEMS", "Dodge EMS")
    AddTextEntry("430", "Police Ferrari")
    AddTextEntry("polmp4", "Police McLaren")
	AddTextEntry("718", "Police Porsche")
    AddTextEntry("POLGT500", "Police Shelby")
    AddTextEntry("SRT8", "Police Jeep")
end)
