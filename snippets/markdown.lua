local ls = require("luasnip")
local s = ls.snippet
local t = ls.text_node
local i = ls.insert_node

return {
  s("bf", {
    t("\\textbf{"), i(1), t("}")
  }),
  s("fr", {
    t("\\frac{"), i(1), t("}{"), i(2), t("}")
  }),
  s("sum", {
    t("\\sum_{"), i(1), t("}^{"), i(2), t("}")
  }),
  s("pm", {
    t("\\pm")
  }),
  s("lim", {
    t("\\lim_{"), i(1), t("}")
  }),
}

