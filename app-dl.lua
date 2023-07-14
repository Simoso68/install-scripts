local list = {
    "ngrok",
    "speedtest-cli",
} 

local function appExist (tab, val)
    for index, value in ipairs(tab) do
        if value == val then
            return true
        end
    end

    return false
end

if appExist(list, arg[1]) then
    print("App " + arg[1] + " found in Manifest!")
    print("Executing script ...")
    os.execute("curl -sS raw.githubusercontent.com/Simoso68/install-scripts/main/scripts/" + arg[1] ".sh | sudo bash")
end