require('wikienv')
local cr = require('wiki\\cr')

local lookup = "Lands"
local result = cr.title({ args={lookup} })

print(result)
