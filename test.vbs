#copy below code and save as (test.vbs ) in same directory where the python scripts are availables.

strComputer = "."
Set objWMIService = GetObject("winmgmts:\\" & strComputer & "\root\cimv2")
Set colItems = objWMIService.ExecQuery("Select * from Win32_PnPEntity")
For Each objItem in colItems
    Wscript.Echo "Class GUID: " & objItem.ClassGuid
    Wscript.Echo "Device is Working: " & objItem.ConfigManagerErrorCode
    Wscript.Echo "Description: " & objItem.Description
    Wscript.Echo "Device ID: " & objItem.DeviceID
    Wscript.Echo "Manufacturer: " & objItem.Manufacturer
    Wscript.Echo "Name: " & objItem.Name
    Wscript.Echo "PNP Device ID: " & objItem.PNPDeviceID
    Wscript.Echo "Service: " & objItem.Service
Next
