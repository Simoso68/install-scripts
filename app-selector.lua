io.write("Application Name: ")
io.flush()
local app = io.read()

print("Downloading ")
os.execute("curl -sS raw.githubusercontent.com/Simoso68/install-scripts/main/app-dl.lua >> /tmp/app-dl.lua")
os.execute("lua /tmp/app-dl.lua " + app)
os.execute("rm -f /tmp/app-dl.lua")