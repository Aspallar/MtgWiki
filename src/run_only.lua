require('wikienv')
local cr = require('wiki\\cr')

local lookup = "111.1"
local result = cr.only({ args={lookup} })

print(result)
