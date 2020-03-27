require('wikienv')
local cr = require('wiki\\cr')

local lookup = "Unblocked Creature"
local result = cr.glossary({ args={lookup} })

print(result)
