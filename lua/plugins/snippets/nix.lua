local ls = require("luasnip")
-- some shorthands...
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

-- Repeat Insernode text
-- @param insert_node_id The id of the insert node to repeat (the first line from)
-- https://www.reddit.com/r/neovim/comments/s0llvm/luasnip_examples/
local ri = function (insert_node_id)
  return func(function (args) return args[1][1] end, insert_node_id)
end

-- Make sure to not pass an invalid command, as io.popen() may write over nvim-text.
local function bash(_, _, command)
  local file = io.popen(command, "r")
  local res = {}
  for line in file:lines() do
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

-- snippets are added via ls.add_snippets(filetype, snippets[, opts]), where
-- opts may specify the `type` of the snippets ("snippets" or "autosnippets",
-- for snippets that should expand directly after the trigger is typed).
--
-- opts can also specify a key. By passing an unique key to each add_snippets, it's possible to reload snippets by
-- re-`:luafile`ing the file in which they are defined (eg. this one).
ls.add_snippets("nix", {
  s({
    trig = "flake",
    name = "Default flake template",
    dscr = "simle nix-flake template",
  }, {
    s({ "{", "" }),
    s({ '  description = "' }),
    i(1, "a simple project"),
    s({ '";', "" }),
    s({ "", "" }),
    s({ "  inputs = {", "" }),
    s({ '    nixpkgs.url = "github:nixos/nixpkgs/nixpkgs-unstable";', "" }),
    s({ "    flake-utils = {", "" }),
    s({ '      inputs.nixpkgs.follows = "nixpkgs";', "" }),
    s({ '      url = "github:numtide/flake-utils";', "" }),
    s({ "    };", "" }),
    s({ "  };", "" }),
    s({ "", "" }),
    s({ "  outputs = { self, nixpkgs, flake-utils, ... }@inputs:", "" }),
    s({ "    flake-utils.lib.eachDefaultSystem (system:", "" }),
    s({ "      let", "" }),
    s({ "        pkgs = import nixpkgs { inherit system; };", "" }),
    s({ "      in", "" }),
    s({ "        rec {", "" }),
    s({ "          defaultPackage = packages." }),
    i(2, "package_name"),
    s({ ";", "" }),
    s({ "          packages." }), ri(2), s({ " = " }), i(3, "derivation"),
    s({ "", "" }),
    s({ "        }", "" }),
    s({ "      );", "" }),
    s({ "}" }),
  }),
}, {
  key = "all",
})
