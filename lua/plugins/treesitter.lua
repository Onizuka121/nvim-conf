require("nvim-treesitter.configs").setup {
  ensure_installed = { "python", "lua", "javascript" }, -- Inserisci i linguaggi che usi
  highlight = {
    enable = true,                -- Abilita evidenziazione sintattica
    additional_vim_regex_highlighting = false, -- Disabilita l'uso della sintassi Vim standard
  },
}
