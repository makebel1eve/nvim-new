-- ~/.config/nvim/snippets/all.lua
-- Helper function to get current date

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
local types = require("luasnip.util.types")
local parse = require("luasnip.util.parser").parse_snippet
local ms = ls.multi_snippet
local k = require("luasnip.nodes.key_indexer").new_key

local function date()
    return os.date("%Y-%m-%d")
end

-- Helper function to get current time
local function time()
    return os.date("%H:%M")
end

-- Snippets
return {
    -- TODO snippet
    s("todo", {
        t("TODO("),
        i(1, "user"),
        t("): "),
        i(2, "task"),
    }),

    -- Date snippet
    s("date", {
        f(date, {}),
    }),

    -- Time snippet
    s("time", {
        f(time, {}),
    }),

    -- Print debug
    s("dbg", {
        t("print("),
        i(1, [["debug: "]]),
        t(")"),
    }),

    -- Shell shebang
    s("shebang", {
        t({ "#!/usr/bin/env bash", "" }),
    }),

    -- License header template
    s("lic", {
        t({
            "-- License: MIT",
            "-- Author: ",
        }),
        i(1, "Your Name"),
        t({
            "",
            "-- Created: ",
        }),
        f(date, {}),
    }),
    s("include", {
        t({ "#include<bits/stdc++.h>", "" }),
        t({ "using namespace std;", "" }),
    }),
}
