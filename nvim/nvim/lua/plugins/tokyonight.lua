return {
    "folke/tokyonight.nvim",
    lazy = false,
    priority = 1000,
    opts = {},
    config = function()
        vim.cmd[[colorscheme tokyonight-night]]

        -- hi FloatBorder guibg=NONE ctermbg=NONE
        -- hi NormalFloat guibg=NONE ctermbg=NONE

        -- Transparent terminal
        vim.cmd [[
            hi Normal guibg=NONE ctermbg=NONE
            hi NormalNC guibg=NONE ctermbg=NONE

            hi NeoTreeNormal guibg=NONE ctermbg=NONE
            hi NeoTreeNormalNC guibg=NONE ctermbg=NONE
            hi NeoTreeWinSeparator guibg=NONE ctermbg=NONE
            hi NeoTreePreview guibg=NONE ctermbg=NONE
            hi NeoTreePreviewNormal guibg=NONE ctermbg=NONE
            
            hi SignColumn guibg=NONE ctermbg=NONE

            hi DiagnosticVirtualTextError guibg=NONE
            hi DiagnosticVirtualTextWarn  guibg=NONE
            hi DiagnosticVirtualTextInfo  guibg=NONE
            hi DiagnosticVirtualTextHint  guibg=NONE
        ]]
    end,
}
