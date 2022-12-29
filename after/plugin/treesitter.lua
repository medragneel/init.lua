require'nvim-treesitter.configs'.setup {
    ensure_installed = { "help","c", "lua", "rust","go","javascript","typescript","python" },
    sync_install = false,
    auto_install = true,
  highlight = {
        enable = false,
   	additional_vim_regex_highlighting = false,
  },
}
