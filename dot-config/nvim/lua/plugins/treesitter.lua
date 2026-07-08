return {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    config = function()
        local installs = { 
            "json",
            "php_only",
            "phpdoc",
            "css",
            "html",
            "blade",
            "markdown", 
            "lua", 
            "c", 
            "rust", 
            "vim", 
            "vimdoc", 
            "php", 
            "javascript" 
        }

        local alreadyInstalled = require('nvim-treesitter.config').get_installed()
        local parsersToInstall = vim.iter(installs) 
            :filter(function(parser)
                return not vim.tbl_contains(alreadyInstalled, parser)
            end):totable()

        require('nvim-treesitter').install(parsersToInstall)

        
        vim.api.nvim_create_autocmd('FileType', {
          pattern = '*',
          callback = function()
            -- Try to enable treesitter features; if parser isn't installed, it will silently fail
            pcall(vim.treesitter.start)                               -- highlighting
            -- pcall(function() vim.wo.foldexpr = 'v:lua.vim.treesitter.foldexpr()' end)     -- folds
            -- pcall(function() vim.wo.foldmethod = 'expr' end)
            pcall(function() 
              vim.bo.indentexpr = "v:lua.require'nvim-treesitter'.indentexpr()" 
            end) -- indentation
          end,
        })
    end,
}
