-- Telescope vim.keymaps
local telescope = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', telescope.find_files, {})
vim.keymap.set('n', '<leader>fg', telescope.live_grep, {})
vim.keymap.set('n', '<leader>fb', telescope.buffers, {})
vim.keymap.set('n', '<leader>fm', telescope.man_pages, {})


-- nvim-tree vim.keymaps
vim.keymap.set('n', '<leader>e', '<cmd>NvimTreeToggle<cr>', {})

local M = {}

local nvimtree = require("nvim-tree.api")
function M.on_attach(bufnr)
  local function opts(desc)
    return { desc = 'nvim-tree: ' .. desc, buffer = bufnr, noremap = true, silent = true, nowait = true }
  end

  -- default mappings
  vim.keymap.set('n', '<C-]>', nvimtree.tree.change_root_to_node,          opts('CD'))
  vim.keymap.set('n', '<C-e>', nvimtree.node.open.replace_tree_buffer,     opts('Open: In Place'))
  vim.keymap.set('n', '<C-k>', nvimtree.node.show_info_popup,              opts('Info'))
  vim.keymap.set('n', '<C-r>', nvimtree.fs.rename_sub,                     opts('Rename: Omit Filename'))
  vim.keymap.set('n', '<C-t>', nvimtree.node.open.tab,                     opts('Open: New Tab'))
  vim.keymap.set('n', '<C-v>', nvimtree.node.open.vertical,                opts('Open: Vertical Split'))
  vim.keymap.set('n', '<C-x>', nvimtree.node.open.horizontal,              opts('Open: Horizontal Split'))
  vim.keymap.set('n', '<BS>',  nvimtree.node.navigate.parent_close,        opts('Close Directory'))
  vim.keymap.set('n', '<CR>',  nvimtree.node.open.edit,                    opts('Open'))
  vim.keymap.set('n', '<Tab>', nvimtree.node.open.preview,                 opts('Open Preview'))
  vim.keymap.set('n', '>',     nvimtree.node.navigate.sibling.next,        opts('Next Sibling'))
  vim.keymap.set('n', '<',     nvimtree.node.navigate.sibling.prev,        opts('Previous Sibling'))
  vim.keymap.set('n', '.',     nvimtree.node.run.cmd,                      opts('Run Command'))
  vim.keymap.set('n', '-',     nvimtree.tree.change_root_to_parent,        opts('Up'))
  vim.keymap.set('n', 'a',     nvimtree.fs.create,                         opts('Create'))
  vim.keymap.set('n', 'bmv',   nvimtree.marks.bulk.move,                   opts('Move Bookmarked'))
  vim.keymap.set('n', 'B',     nvimtree.tree.toggle_no_buffer_filter,      opts('Toggle No Buffer'))
  vim.keymap.set('n', 'c',     nvimtree.fs.copy.node,                      opts('Copy'))
  vim.keymap.set('n', 'C',     nvimtree.tree.toggle_git_clean_filter,      opts('Toggle Git Clean'))
  vim.keymap.set('n', '[c',    nvimtree.node.navigate.git.prev,            opts('Prev Git'))
  vim.keymap.set('n', ']c',    nvimtree.node.navigate.git.next,            opts('Next Git'))
  vim.keymap.set('n', 'd',     nvimtree.fs.remove,                         opts('Delete'))
  vim.keymap.set('n', 'D',     nvimtree.fs.trash,                          opts('Trash'))
  vim.keymap.set('n', 'E',     nvimtree.tree.expand_all,                   opts('Expand All'))
  vim.keymap.set('n', 'e',     nvimtree.fs.rename_basename,                opts('Rename: Basename'))
  vim.keymap.set('n', ']e',    nvimtree.node.navigate.diagnostics.next,    opts('Next Diagnostic'))
  vim.keymap.set('n', '[e',    nvimtree.node.navigate.diagnostics.prev,    opts('Prev Diagnostic'))
  vim.keymap.set('n', 'F',     nvimtree.live_filter.clear,                 opts('Clean Filter'))
  vim.keymap.set('n', 'f',     nvimtree.live_filter.start,                 opts('Filter'))
  vim.keymap.set('n', 'g?',    nvimtree.tree.toggle_help,                  opts('Help'))
  vim.keymap.set('n', 'gy',    nvimtree.fs.copy.absolute_path,             opts('Copy Absolute Path'))
  vim.keymap.set('n', 'H',     nvimtree.tree.toggle_hidden_filter,         opts('Toggle Dotfiles'))
  vim.keymap.set('n', 'I',     nvimtree.tree.toggle_gitignore_filter,      opts('Toggle Git Ignore'))
  vim.keymap.set('n', 'J',     nvimtree.node.navigate.sibling.last,        opts('Last Sibling'))
  vim.keymap.set('n', 'K',     nvimtree.node.navigate.sibling.first,       opts('First Sibling'))
  vim.keymap.set('n', 'm',     nvimtree.marks.toggle,                      opts('Toggle Bookmark'))
  vim.keymap.set('n', 'o',     nvimtree.node.open.edit,                    opts('Open'))
  vim.keymap.set('n', 'O',     nvimtree.node.open.no_window_picker,        opts('Open: No Window Picker'))
  vim.keymap.set('n', 'p',     nvimtree.fs.paste,                          opts('Paste'))
  vim.keymap.set('n', 'P',     nvimtree.node.navigate.parent,              opts('Parent Directory'))
  vim.keymap.set('n', 'q',     nvimtree.tree.close,                        opts('Close'))
  vim.keymap.set('n', 'r',     nvimtree.fs.rename,                         opts('Rename'))
  vim.keymap.set('n', 'R',     nvimtree.tree.reload,                       opts('Refresh'))
  vim.keymap.set('n', 's',     nvimtree.node.run.system,                   opts('Run System'))
  vim.keymap.set('n', 'S',     nvimtree.tree.search_node,                  opts('Search'))
  vim.keymap.set('n', 'U',     nvimtree.tree.toggle_custom_filter,         opts('Toggle Hidden'))
  vim.keymap.set('n', 'W',     nvimtree.tree.collapse_all,                 opts('Collapse'))
  vim.keymap.set('n', 'x',     nvimtree.fs.cut,                            opts('Cut'))
  vim.keymap.set('n', 'y',     nvimtree.fs.copy.filename,                  opts('Copy Name'))
  vim.keymap.set('n', 'Y',     nvimtree.fs.copy.relative_path,             opts('Copy Relative Path'))
  vim.keymap.set('n', '<2-LeftMouse>',  nvimtree.node.open.edit,           opts('Open'))
  vim.keymap.set('n', '<2-RightMouse>', nvimtree.tree.change_root_to_node, opts('CD'))
end

function M.print_node_path()
  local node = nvimtree.tree.get_node_under_cursor()
  print(node.absolute_path)
end

require("nvim-tree").setup({
  on_attach = M.on_attach,
})
