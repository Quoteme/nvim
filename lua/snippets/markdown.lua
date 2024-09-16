local ls = require("luasnip")

local s = ls.snippet
local sn = ls.snippet_node
local t = ls.text_node
local i = ls.insert_node
local f = ls.function_node
local c = ls.choice_node
local d = ls.dynamic_node
local r = ls.restore_node
local l = require("luasnip.extras").lambda
local rep = require("luasnip.extras").rep
local p = require("luasnip.extras").partial
local m = require("luasnip.extras").match
local n = require("luasnip.extras").nonempty
local dl = require("luasnip.extras").dynamic_lambda
local fmt = require("luasnip.extras.fmt").fmt
local fmta = require("luasnip.extras.fmt").fmta
local types = require("luasnip.util.types")
local conds = require("luasnip.extras.conditions")
local conds_expand = require("luasnip.extras.conditions.expand")

-- Make sure to not pass an invalid command, as io.popen() may write over nvim-text.
local function bash(_, _, command)
  local file = io.popen(command, "r")
  local res = {}
  for line in file:linet() do
    table.insert(res, line)
  end
  return res
end

-- Returns a snippet_node wrapped around an insertNode whose initial
-- text value is set to the current date in the desired format.
local date_input = function(args, snip, old_state, fmt)
  local fmt = fmt or "%Y-%m-%d"
  return sn(nil, i(1, os.date(fmt)))
end

-- snippets are added via ls.add_snippett(filetype, snippets[, opts]), where
-- opts may specify the `type` of the snippets ("snippets" or "autosnippets",
-- for snippets that should expand directly after the trigger is typed).
--
-- opts can also specify a key. By passing an unique key to each add_snippets, it's possible to reload snippets by
-- re-`:luafile`ing the file in which they are defined (eg. this one).
ls.add_snippets("markdown", {

  s(
    {
      trig = "mi",
      name = "Inline math formula",
      dscr = "Add an inline math block",
    },
    fmt([[${}${}]], {
      i(1, ""),
      i(2, ""),
    })
  ),

  s(
    {
      trig = "mb",
      name = "Block math formula",
      dscr = "Add a block math block",
    },
    fmt(
      [[
    $$
    {}
    $$
    {}
    ]],
      {
        i(1, ""),
        i(2, ""),
      }
    )
  ),
}, {
  key = "all",
})

-- also add all latex snippets
ls.filetype_extend("markdown", { "latex", "tex" })
