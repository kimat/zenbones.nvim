local lush = require "lush"
local util = require "zenbones.util"

local base_name = util.bg_to_base_name()
local p = require("rosebones.palette")[base_name]

local generator = require "zenbones.specs"
local specs = generator.generate(p, base_name, generator.get_global_config(base_name, "rosebones"))

-- extend specs using Lush
return lush.extends({ specs }).with(function()
	return {
		Statement { fg = p.leaf, gui = "bold" },
		Special { fg = p.water, gui = "bold" },
		Type { fg = p.text },
	}
end)
