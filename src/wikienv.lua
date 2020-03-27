-- Set up just enough of a fake mediawiki environment to enable
-- running the wiki modules without having to make changes to them

local rules = require("wiki\\rules")

-- luacheck: push no global
mw = {}
mw.text = {}
mw.title = {}
mw.uri = {}
-- luacheck: pop

function mw.loadData(moduleName) -- luacheck: no global
   assert(moduleName, "No module specified")
   if moduleName == "Module:CR/rules" then
       return rules
    end
    assert(false, "Invalid module name: " .. moduleName)
end

function mw.getCurrentFrame() -- luacheck: no global
   local frame  = {
      expandTemplate = function ()
         return "Shadows of Lua"
      end
   }
   return frame;
end

function mw.title.getCurrentTitle() -- luacheck: no global
   return {
      namespace = 0;
   }
end

function mw.log(s) -- luacheck: no global
	print("**** LOG: " .. s)
end

function mw.text.split(s, delimiter, plain) -- luacheck: no global
  local result = { }
  local from  = 1
  local delim_from, delim_to = string.find( s, delimiter, from, plain  )
  while delim_from do
    table.insert( result, string.sub( s, from , delim_from-1, plain ) )
    from  = delim_to + 1
    delim_from, delim_to = string.find( s, delimiter, from, plain  )
  end
  table.insert( result, string.sub( s, from  ) )
  return result
end

function mw.text.trim(s) -- luacheck: no global
    local _, i1 = string.find(s,'^%s*')
    local i2 = string.find(s,'%s*$')
    return string.sub(s, i1 + 1, i2 - 1)
end

function mw.text.encode(s) -- luacheck: no global
	return s
end

function mw.uri.decode(s) -- luacheck: no global
    return s
end

-- load the mwdiawiki lua html helpers which have been very
-- nastily hacked to work outside the mediawiki environment
require('mwhtml').setupInterface({
    uniqPrefix = "\x7f'\"`UNIQ", uniqSuffix = ";"
})
