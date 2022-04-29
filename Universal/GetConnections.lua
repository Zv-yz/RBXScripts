--> Lord.#0068
repeat task.wait() until game:IsLoaded()
game:GetService('ScriptContext'):SetTimeout(3.5)
task.wait(5)
if getconnections then
	for _,v in pairs(getconnections(game:GetService('ScriptContext').Error)) do
		v:Disable()
	end

	for _,v in pairs(getconnections(game:GetService('LogService').MessageOut)) do
		v:Disable()
	end
end