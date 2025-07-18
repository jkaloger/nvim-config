-- Core keymaps
vim.keymap.set('n', '<leader>e', vim.diagnostic.open_float, { desc = 'Open floating diagnostics' })
vim.keymap.set('n', '<leader><CR>', ':ToggleTerm<CR>', { desc = 'Open Terminal Buffer' })

-- Terminal keymaps
vim.keymap.set('t', '<Esc>', [[<C-\><C-n>]])

-- Plugin keymaps
-- [Telescope]
vim.keymap.set('n', '<leader>?', require('telescope.builtin').oldfiles, { desc = '[?] Find recently opened files' })
vim.keymap.set('n', '<leader><space>', require('telescope.builtin').buffers, { desc = '[ ] Find existing buffers' })
vim.keymap.set('n', '<leader>/', function()
  -- You can pass additional configuration to telescope to change theme, layout, etc.
  require('telescope.builtin').current_buffer_fuzzy_find(require('telescope.themes').get_dropdown {
    winblend = 10,
    previewer = false,
  })
end, { desc = '[/] Fuzzily search in current buffer' })

local function telescope_live_grep_open_files()
  require('telescope.builtin').live_grep {
    grep_open_files = true,
    prompt_title = 'Live Grep in Open Files',
  }
end
vim.keymap.set('n', '<leader>s/', telescope_live_grep_open_files, { desc = '[S]earch [/] in Open Files' })
vim.keymap.set('n', '<leader>ss', require('telescope.builtin').builtin, { desc = '[S]earch [S]elect Telescope' })
vim.keymap.set('n', '<leader>gf', require('telescope.builtin').git_files, { desc = 'Search [G]it [F]iles' })
vim.keymap.set('n', '<leader>sf', require('telescope.builtin').find_files, { desc = '[S]earch [F]iles' })
vim.keymap.set('n', '<leader>sh', require('telescope.builtin').help_tags, { desc = '[S]earch [H]elp' })
vim.keymap.set('n', '<leader>sw', require('telescope.builtin').grep_string, { desc = '[S]earch current [W]ord' })
vim.keymap.set('n', '<leader>sg', require('telescope.builtin').live_grep, { desc = '[S]earch by [G]rep' })
vim.keymap.set('n', '<leader>sd', require('telescope.builtin').diagnostics, { desc = '[S]earch [D]iagnostics' })
vim.keymap.set('n', '<leader>sr', require('telescope.builtin').resume, { desc = '[S]earch [R]esume' })

-- [Copilot]
vim.keymap.set('n', '<leader>cd', ':Copilot disable<cr>', { desc = 'Disable Copilot' })
vim.keymap.set('n', '<leader>ce', ':Copilot enable<cr>', { desc = 'Enable Copilot' })
vim.keymap.set('n', '<leader>cs', ':Copilot status<cr>', { desc = 'Copilot Status' })

-- [Neotree]
vim.keymap.set('n', '<leader>o', ':Neotree<cr>', { desc = 'Open neotree' })

-- [Cloak]
vim.keymap.set('n', '<leader>cl', ':CloakToggle<cr>', { desc = 'Toggle cloak' })

-- [Lazygit]
vim.keymap.set('n', '<leader>gg', ':LazyGit<cr>', { desc = 'Open LazyGit' })

-- [CSVView]
vim.keymap.set('n', '<leader>cv', ':CsvViewToggle<cr>', { desc = 'Toggle CSV view' })

-- [Neotest]
vim.keymap.set('n', '<leader>tr', require("neotest").run.run, { desc = '[T]est [R]un nearest' });
vim.keymap.set('n', '<leader>tw', require("neotest").watch.toggle, { desc = '[T]est [W]atch toggle' });
vim.keymap.set('n', '<leader>ts', require("neotest").summary.toggle, { desc = '[T]est [S]ummary toggle' });
vim.keymap.set('n', '<leader>tc', require("neotest").output_panel.toggle, { desc = '[T]est [C]onsole' });
