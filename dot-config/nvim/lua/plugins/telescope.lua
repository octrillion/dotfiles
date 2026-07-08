return {
    {
        "nvim-telescope/telescope.nvim",
        dependencies = {
            "nvim-lua/plenary.nvim",
            { "nvim-telescope/telescope-fzf-native.nvim", build = "make" },
        },
        config = function()
            local builtin = require("telescope.builtin")
            local ts = require("telescope")
            
            ts.setup({
                defaults = {
                    theme = "dropdown",
                },
            })

            vim.keymap.set("n", "<leader>ff", function()
                local is_git_repo = vim.fn.system("git rev-parse --git-dir") ~= ""
                if vim.v.shell_error == 0 then
                    builtin.git_files({
                        show_untracked = true,
                    })
                else
                    builtin.find_files({
                        hidden = true,
                        no_ignore = true,
                    })
                end
            end, {desc = 'Telescope find files'})
            vim.keymap.set("n", "<leader>fg", builtin.live_grep, {desc = 'telescope live grep'})
            vim.keymap.set("n", "<leader>fb", builtin.buffers, {desc = 'Telescope Buffers'})
            vim.keymap.set('n', '<leader>fh', builtin.help_tags, { desc = 'Telescope help tags' })
        end,
    },
}
