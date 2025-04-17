local ls = require("luasnip")
local s = ls.snippet
local sn = ls.snippet_node
local isn = ls.indent_snippet_node
local t = ls.text_node
local i = ls.insert_node
local f = ls.function_node
local c = ls.choice_node
local d = ls.dynamic_node
local r = ls.restore_node
local events = require("luasnip.util.events")
local ai = require("luasnip.nodes.absolute_indexer")
local extras = require("luasnip.extras")
local l = extras.lambda
local rep = extras.rep
local p = extras.partial
local m = extras.match
local n = extras.nonempty
local dl = extras.dynamic_lambda
local fmt = require("luasnip.extras.fmt").fmt
local fmta = require("luasnip.extras.fmt").fmta
local conds = require("luasnip.extras.expand_conditions")
local postfix = require("luasnip.extras.postfix").postfix
local treesitter_postfix = require("luasnip.extras.treesitter_postfix").treesitter_postfix
local types = require("luasnip.util.types")
local parse = require("luasnip.util.parser").parse_snippet
local ms = ls.multi_snippet
local k = require("luasnip.nodes.key_indexer").new_key

local rec_ls

rec_ls = function()
  return sn(
    nil,
    c(1, {
      t(""),
      sn(nil, { t({ "", "\t- " }), i(1), d(2, rec_ls, {}) }),
    })
  )
end

ls.add_snippets("markdown", {

  -- math inline
  s(
    {
      trig = "mi",
      trigEngine = "pattern",
      name = "Inline math formula",
      dscr = "Add an inline math block",
    },
    fmt([[${}${}]], {
      i(1, ""),
      i(2, ""),
    })
  ),

  -- math block
  s(
    {
      trig = "mb",
      trigEngine = "pattern",
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

  -- yaml frontmatter
  s(
    {
      trig = "yaml",
      name = "YAML frontmatter",
      dscr = "Add a YAML frontmatter block",
    },
    fmta(
      [[
    ---
    title: <title>
    subtitle: <subtitle>
    author: <author>
    abstract: | 
      <abstract>
    keywords: [<keywords>]
    header-includes:
      - \\newcommand{\\CC}{\\mathbb{C}}
      - \\newcommand{\\FF}{\\mathbb{F}_{p^n}}
      - \\newcommand{\\NN}{\\mathbb{N}}
      - \\newcommand{\\PP}{\\mathbb{P}}
      - \\newcommand{\\QQ}{\\mathbb{Q}}
      - \\newcommand{\\RR}{\\mathbb{R}}
      - \\newcommand{\\ZZ}{\\mathbb{Z}}
    pdf-engine: xelatex
    geometry: a4paper
    fontsize: 12pt
    mainfont: Times New Roman
    ---
    ]],
      {
        title = i(1, ""),
        subtitle = i(2, ""),
        author = c(3, {
          t({ "", "\t- Luca Leon Happel" }),
          d(nil, rec_ls, {}),
        }),
        abstract = i(4, ""),
        keywords = i(5, ""),
      }
    )
  ),

  treesitter_postfix({
    trig = ".frac",
    matchTSNode = {
      query = [[
            [
              (latex_block)
            ] @prefix
        ]],
      query_lang = "markdown_inline",
    },
  }, {
    -- f(function(_, parent)
    --     local node_content = table.concat(parent.snippet.env.LS_TSMATCH, '\n')
    --     local replaced_content = ("(%s)"):format(node_content)
    --     return replaced_content
    -- end)
    fmta(
      [[
  \\frac{<numerator>}{<denominator>}
  ]],
      {
        numerator = l(l.LS_TSCAPTURE_NUMERATOR),
        denominator = i(2, ""),
      }
    ),
  }),
}, {
  key = "all",
})

-- also add all latex snippets
-- ls.filetype_extend("markdown", { "latex", "tex" })
