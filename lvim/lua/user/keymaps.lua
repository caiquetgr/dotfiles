lvim.keys.normal_mode["L"] = ":BufferLineCycleNext<CR>"
lvim.keys.normal_mode["H"] = ":BufferLineCyclePrev<CR>"
lvim.keys.normal_mode["J"] = ":BufferLinePick<CR>"

lvim.builtin.which_key.mappings["f"] = {}
-- -- make ff use =  ["f"] = {
--         function()
--           require("lvim.core.telescope.custom-finders").find_project_files { previewer = false }
--         end,
--         "Find File",
--       }
lvim.keys.normal_mode["<leader>ff"] = ":lua require'telescope.builtin'.find_files(require('telescope.themes').get_dropdown({ previewer = false }))<cr>"
