lvim.leader = "space"

lvim.keys.normal_mode["L"] = ":BufferLineCycleNext<CR>"
lvim.keys.normal_mode["H"] = ":BufferLineCyclePrev<CR>"
lvim.keys.normal_mode["J"] = ":BufferLinePick<CR>"
lvim.keys.normal_mode["gi"] = "<cmd>lua vim.lsp.buf.implementation()<cr>"
lvim.keys.normal_mode["<leader>le"] = {
    function()
      local config = lvim.lsp.diagnostics.float
      config.scope = "line"
      vim.diagnostic.open_float({ border = "rounded" }, config)
    end
}

-- lvim.builtin.which_key.mappings["f"] = {
--     ["f"] = {
--         function()
--           require("lvim.core.telescope.custom-finders").find_project_files { previewer = false }
--         end,
--         "Find File",
--     }
-- }

lvim.builtin.which_key.mappings["lE"] = { "<cmd>Telescope quickfix<cr>", "Telescope Quickfix" }
lvim.builtin.which_key.mappings["le"] = {}
lvim.builtin.which_key.mappings["le"] = {
    function()
      local config = lvim.lsp.diagnostics.float
      config.scope = "line"
      vim.diagnostic.open_float({ border = "rounded" }, config)
    end,
    "Show line diagnostics"
}

lvim.builtin.terminal.open_mapping = "<c-t>"

lvim.keys.normal_mode["<leader>ff"] =
":lua require'telescope.builtin'.find_files(require('telescope.themes').get_dropdown({ previewer = false }))<cr>"
