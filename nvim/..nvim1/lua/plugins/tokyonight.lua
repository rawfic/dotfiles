return {
    "folke/tokyonight.nvim",
    lazy = false,
    priority = 1000,
    opts = {},
    config = function()
        vim.cmd[[colorscheme tokyonight-night]]

        -- Transparent terminal
        vim.cmd [[
            hi Normal guibg=NONE ctermbg=NONE
            hi EndOfBuffer guifg=bg guibg=bg
        ]]
    end,
}
