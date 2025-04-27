local options = {
  ensure_installed = {
    "bash",
    "vim",
    "lua",
    "vimdoc",
    "html",
    "css",
    "go",
    "vim",
    "vimdoc",
    "python",
    "c",
  },
  highlight = {
    enable = true,
    use_languagetree = true,
  },
  indent = { enable = true },
}
require("nvim-treesitter.configs").setup(options)
