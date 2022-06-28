local status_ok, telescope = pcall(require, "telescope")
if not status_ok then
    return
end

 telescope.load_extension('media_files')

 local actions = require "telescope.actions"

 telescope.setup {
     defaults = {
        prompt_prefix = " ",
        selection_caret = " ",
        path_display = { "smart" },

        mappings = {
            i = {
                ["<C-i>"] = actions.cycle_history_next,
                ["<C-o>"] = actions.cycle_history_prev,

                ["<C-j>"] = actions.move_selection_next,
                ["<C-k>"] = actions.move_selection_previous,

                ["<C-c>"] = actions.close,

                ["<CR>"] = actions.select_default,
                ["<C-x>"] = actions.select_horizontal,
                ["<C-v>"] = actions.select_vertical,
                ["<C-t>"] = actions.select_tab,

                ["<M-k>"] = actions.preview_scrolling_up,
                ["<M-j>"] = actions.preview_scrolling_down,

                ["<Tab>"] = actions.toggle_selection + actions.move_selection_worse,
                ["<S-Tab>"] = actions.toggle_selection + actions.move_selection_better,


            },
            n = {
                ["<esc>"] = actions.close,

                ["<CR>"] = actions.select_default,
                ["<C-x>"] = actions.select_horizontal,
                ["<C-v>"] = actions.select_vertical,
                ["<C-t>"] = actions.select_tab,

                ["<M-k>"] = actions.preview_scrolling_up,
                ["<M-j>"] = actions.preview_scrolling_down,
            },
        },
     },
     pickers = {

     },
     extensions = {
         media_files = {
             filetypes = {"png", "webp", "jpg", "jpeg"},
             find_cmd = "find"
         }
     },

 }
