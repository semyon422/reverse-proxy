local _domains = {
	"dfjk.ru",
	"smc.dfjk.ru",
	"10.dfjk.ru",
	"soundsphere.xyz",
	"www.soundsphere.xyz",
	"download.soundsphere.xyz",
	"dl.soundsphere.xyz",
	"10key.soundsphere.xyz",
	"shanghaimoon.ru",
}

local domains = {}
for _, domain in ipairs(_domains) do
	domains[domain] = true
end

return function(domain)
	return domains[domain]
end
