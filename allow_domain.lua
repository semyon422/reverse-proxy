local _domains = {
	"dfjk.ru",
}

local domains = {}
for _, domain in ipairs(_domains) do
	domains[domain] = true
end

return function(domain)
	return domains[domain]
end
