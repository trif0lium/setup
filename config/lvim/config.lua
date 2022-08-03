vim.api.nvim_command "set cursorline"
vim.api.nvim_command "set nocompatible"
vim.api.nvim_command "set tabstop=2"
vim.api.nvim_command "set shiftwidth=2"
vim.api.nvim_command "set expandtab"
vim.api.nvim_command "set number"
vim.api.nvim_command "set ruler"
vim.api.nvim_command "set nobackup"
vim.api.nvim_command "set nowritebackup"
vim.api.nvim_command "set noswapfile"
vim.cmd("set background=dark")
vim.cmd("nnoremap Q <nop>")
vim.cmd("nnoremap <esc> :noh<return><esc>")

lvim.format_on_save = true
lvim.transparent_window = true
vim.g.gruvbox_transparent_bg = 1
vim.g.gruvbox_contrast_dark = "hard"
vim.g.indentLine_setConceal = 0
lvim.colorscheme = "tempus_night"
lvim.leader = "space"
lvim.builtin.alpha.active = true
lvim.builtin.terminal.active = true
lvim.builtin.gitsigns.active = true
lvim.builtin.bufferline.active = false
lvim.builtin.treesitter.ensure_installed = {
  "bash",
  "javascript",
  "json",
  "lua",
  "python",
  "typescript",
  "yaml",
  "go",
}
lvim.builtin.treesitter.ignore_install = { "haskell" }
lvim.lsp.diagnostics.virtual_text = true
lvim.builtin.which_key.mappings["g"] = {
  ":Telescope git_files<CR>", ""
}
lvim.builtin.notify.active = false
lvim.builtin.cmp.sources = {
  { name = "nvim_lsp" },
  { name = "luasnip" },
}

lvim.plugins = {
  { "lunarvim/colorschemes" },
  { "Yggdroot/indentLine" },
  { "ntpeters/vim-better-whitespace" },
  { "morhetz/gruvbox" },
  { "https://gitlab.com/protesilaos/tempus-themes-vim.git" }
}
