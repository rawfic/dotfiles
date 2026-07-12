return {
    {
        "mason-org/mason.nvim",
        opts = {}
    },

    {
        "mason-org/mason-lspconfig.nvim",
        opts = {
            ensure_installed = {
                "lua_ls",
                "pyright",
                "clangd",
                "bashls",
                "ts_ls",
                "typescript-language-server",
            },
        },
        dependencies = {
            "neovim/nvim-lspconfig",
        },
        config = function()
            vim.lsp.enable({
                "lua_ls",
                "pyright",
                "clangd",
                "bashls",
                "ts_ls",
            })
           
            vim.diagnostic.config({

                severity_sort = true,
                
                underline = {
                    severity = {
                        min = vim.diagnostic.severity.ERROR,
                    },
                },

                virtual_text = {
                    severity = {
                        min = vim.diagnostic.severity.WARN,
                    },
                },

                signs = {
                    severity = {
                        min = vim.diagnostic.severity.WARN,
                    },
                },
            })

            vim.keymap.set("n", "<leader>rn", vim.lsp.buf.rename)
            vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action)

        end,
    },
}
