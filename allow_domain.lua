local _domains = {
	"dfjk.ru",
	"smc.dfjk.ru",
	"soundsphere.xyz",
	"www.soundsphere.xyz",
	"download.soundsphere.xyz",
	"dl.soundsphere.xyz",
}

local domains = {}
for _, domain in ipairs(_domains) do
	domains[domain] = true
end

return function(domain)
	return domains[domain]
end
