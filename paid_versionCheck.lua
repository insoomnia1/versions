--[[
     SERVER SIDE >>>>>>
--]]

local function CheckVersion()
    PerformHttpRequest('https://raw.githubusercontent.com/insoomnia!/versions/master/FILE_NAME.txt', function(err, newestVersion, headers)
    	local currentVersion = GetResourceMetadata(GetCurrentResourceName(), 'version')
        local resourcename = "RESOURCE_NAME_HERE"
        local howto = "Please Contact FrostyyDevs For A Update"
    	if not newestVersion then 
            print("Currently unable to run a version check.") 
            return 
        end

    	local advice = "^1You Are Currently Running A Outdated Version Of "..resourcename.."\n "..howto.." ^7"
    	if newestVersion:gsub("%s+", "") == currentVersion:gsub("%s+", "") 
        then advice = '^6You are running the latest version.^7'
        else 
            print("")
            print("")
            print("^3Version Check^7: ^2Current^7: "..currentVersion.." ^2Latest^7: "..newestVersion)
            print("")
            print("")
        end
        print("")
    	print(advice)
        print("")
    end)
end
CheckVersion()