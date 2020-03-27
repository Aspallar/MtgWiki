require('wikienv')
local cr = require('wiki\\cr')

local lookup = "112"
local result = cr.full({ args={lookup} })

print(result)
