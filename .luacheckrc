-- luacheck configuration
-- luacheck: no global

max_line_length = false

max_string_line_length = false

max_comment_line_length = false

ignore = {
	"211/_" -- no unused variable warnings for variables named _
}

read_globals = {"mw", "unpack"}

exclude_files = {"src/mwhtml.lua"}

files["src/wikienv.lua"] = {
	global = false,
	unused = false
}

