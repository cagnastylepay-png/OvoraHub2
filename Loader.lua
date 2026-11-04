-- Launch the maintained Sae/Test.lua script.
local url = "https://raw.githubusercontent.com/cagnastylepay-png/Sae/main/Test.lua"
assert(type(loadstring) == "function", "OVORA: loadstring indisponible")
local downloaded, source = pcall(function()
 return game:HttpGet(url)
end)
assert(downloaded and type(source) == "string" and #source > 0,
 "OVORA: impossible de charger Test.lua : " .. tostring(source))
local run, compileError = loadstring(source, "Sae/Test.lua")
assert(run, "OVORA: compilation Test.lua : " .. tostring(compileError))
return run()
