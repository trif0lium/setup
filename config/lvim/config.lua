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
vim.cmd("nnoremap Q <nop>")
vim.cmd("nnoremap <esc> :noh<return><esc>")

lvim.format_on_save = true
lvim.colorscheme = "base16-default-dark"
lvim.leader = "space"
lvim.builtin.alpha.active = true
lvim.builtin.notify.active = true
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

lvim.plugins = {
  { "lunarvim/colorschemes" },
  { "Yggdroot/indentLine" },
  { "ntpeters/vim-better-whitespace" },
  { "chriskempson/base16-vim" },
}
