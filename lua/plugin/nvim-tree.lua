local op = vim.g
op.nvim_tree_disable_netrw = 0
op.nvim_tree_hijack_netrw = 0
op.nvim_tree_quit_on_open = 1
op.nvim_tree_indent_markers = 1
op.nvim_tree_hide_dotfiles = 1

local tree_cb = require'nvim-tree.config'.nvim_tree_callback
vim.g.nvim_tree_bindings = {
  -- default mappings
  ["t"]              = tree_cb("edit"), --custom key
  ["o"]              = tree_cb("edit"),
  ["<2-LeftMouse>"]  = tree_cb("edit"),
  ["<2-RightMouse>"] = tree_cb("cd"),
  ["<C-]>"]          = tree_cb("cd"),
  ["<C-v>"]          = tree_cb("vsplit"),
  ["<C-s>"]          = tree_cb("split"), --custom key
  ["<C-t>"]          = tree_cb("tabnew"),
  ["<"]              = tree_cb("prev_sibling"),
  [">"]              = tree_cb("next_sibling"),
  ["h"]              = tree_cb("close_node"), -- custom key
  ["<S-CR>"]         = tree_cb("close_node"),
  ["<Tab>"]          = tree_cb("preview"),
  ["I"]              = tree_cb("toggle_ignored"),
  ["H"]              = tree_cb("toggle_dotfiles"),
  ["R"]              = tree_cb("refresh"),
  ["a"]              = tree_cb("create"),
  ["d"]              = tree_cb("remove"),
  ["r"]              = tree_cb("rename"),
  ["<C-r>"]          = tree_cb("full_rename"),
  ["x"]              = tree_cb("cut"),
  ["c"]              = tree_cb("copy"),
  ["p"]              = tree_cb("paste"),
  ["[c"]             = tree_cb("prev_git_item"),
  ["]c"]             = tree_cb("next_git_item"),
  ["-"]              = tree_cb("dir_up"),
  ["q"]              = tree_cb("close"),
}
