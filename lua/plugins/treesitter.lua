require("nvim-treesitter.configs").setup {
  ensure_installed = { "python", "lua", "javascript" , "c" }, -- Inserisci i linguaggi che usi
  auto_install = true,
  highlight = {
    enable = true,                -- Abilita evidenziazione sintattica
    additional_vim_regex_highlighting = false, -- Disabilita l'uso della sintassi Vim standard
  },
}
