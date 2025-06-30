local config = require("config")

local domains = {}

domains.list = {
	"dfjk.ru",
	"smc.dfjk.ru",
	"10.dfjk.ru",

	"soundsphere.xyz",
	"www.soundsphere.xyz",
	"download.soundsphere.xyz",
	"dl.soundsphere.xyz",
	"10key.soundsphere.xyz",

	"rizu.su",
	"www.rizu.su",
	"download.rizu.su",
	"dl.rizu.su",

	"c.dfjk.ru",
	"ce.dfjk.ru",
	"c4.dfjk.ru",
	"osu.dfjk.ru",
	"b.dfjk.ru",
	"api.dfjk.ru",
	"assets.dfjk.ru",
	"a.dfjk.ru",
}

domains.map = {}
for _, domain in ipairs(domains.list) do
	domains.map[domain] = true
end

function domains.allow_domain(domain, auto_ssl, ssl_options, renewal)
	if renewal and not config.allow_renewal then
		return false
	end
	return domains.map[domain]
end

return domains
