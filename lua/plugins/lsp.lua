return {
    "neovim/nvim-lspconfig",
    dependencies = {
        "williamboman/mason.nvim",
        "williamboman/mason-lspconfig.nvim",
        "hrsh7th/cmp-nvim-lsp",
        "hrsh7th/cmp-buffer",
        "hrsh7th/cmp-path",
        "hrsh7th/cmp-cmdline",
        "hrsh7th/nvim-cmp",
        "L3MON4D3/LuaSnip",
        "saadparwaiz1/cmp_luasnip",
        "j-hui/fidget.nvim",
        "onsails/lspkind.nvim",
    },

    config = function()
        local cmp = require('cmp')
        local cmp_lsp = require("cmp_nvim_lsp")
        local capabilities = vim.tbl_deep_extend(
            "force",
            {},
            vim.lsp.protocol.make_client_capabilities(),
            cmp_lsp.default_capabilities())

        require("fidget").setup({})
        require("mason").setup()
        require("mason-lspconfig").setup({
            ensure_installed = {
                "lua_ls",
                "rust_analyzer",
                "gopls",
            },
            handlers = {
                function(server_name) -- default handler (optional)
                    require("lspconfig")[server_name].setup {
                        capabilities = capabilities
                    }
                end,

                zls = function()
                    local lspconfig = require("lspconfig")
                    lspconfig.zls.setup({
                        root_dir = lspconfig.util.root_pattern(".git", "build.zig", "zls.json"),
                        settings = {
                            zls = {
                                enable_inlay_hints = true,
                                enable_snippets = true,
                                warn_style = true,
                            },
                        },
                    })
                    vim.g.zig_fmt_parse_errors = 0
                    vim.g.zig_fmt_autosave = 0
                end,
                ["lua_ls"] = function()
                    local lspconfig = require("lspconfig")
                    lspconfig.lua_ls.setup {
                        capabilities = capabilities,
                        settings = {
                            Lua = {
                                runtime = { version = "Lua 5.1" },
                                diagnostics = {
                                    globals = { "bit", "vim", "it", "describe", "before_each", "after_each" },
                                }
                            }
                        }
                    }
                    local lspkind = require("lspkind")
                    local luasnip = require("luasnip")

                    require("luasnip.loaders.from_vscode").lazy_load()



                    cmp.setup({
                        formatting = {
                            format = lspkind.cmp_format({
                                mode = 'symbol', -- show only symbol annotations
                                maxwidth = 50,   -- prevent the popup from showing more than provided characters (e.g 50 will not show more than 50 characters)
                                -- can also be a function to dynamically calculate max width such as
                                -- maxwidth = function() return math.floor(0.45 * vim.o.columns) end,
                                ellipsis_char = '...',    -- when popup menu exceed maxwidth, the truncated part would show ellipsis_char instead (must define maxwidth first)
                                show_labelDetails = true, -- show labelDetails in menu. Disabled by default

                                -- The function below will be called before any actual modifications from lspkind
                                -- so that you can provide more controls on popup customization. (See [#30](https://github.com/onsails/lspkind-nvim/pull/30))
                                before = function(entry, vim_item)
                                    return vim_item
                                end
                            })

                        },
                        snippet = {
                            expand = function(args)
                                luasnip.lsp_expand(args.body)
                            end,
                        },
                        window = {
                            completion = cmp.config.window.bordered(),
                            documentation = cmp.config.window.bordered(),

                        },
                        mapping = cmp.mapping.preset.insert({
                            ["<C-d>"] = cmp.mapping.scroll_docs(-4),
                            ["<C-f>"] = cmp.mapping.scroll_docs(4),
                            ["<C-Space>"] = cmp.mapping.complete(),
                            ["<C-e>"] = cmp.mapping.close(),
                            ["<CR>"] = cmp.mapping.confirm({
                                behavior = cmp.ConfirmBehavior.Replace,
                                select = true,
                            }),
                        }),
                        sources = cmp.config.sources({
                            { name = "nvim_lsp" },
                            { name = "luasnip", option = { show_autosnippets = true } },
                            { name = "buffer" },
                            { name = "path" },
                        }),
                    })
                    -- Use buffer source for `/` and `?` (if you enabled `native_menu`, this won't work anymore).
                    cmp.setup.cmdline({ '/', '?' }, {
                        mapping = cmp.mapping.preset.cmdline(),
                        sources = {
                            { name = 'buffer' }
                        }
                    })

                    -- Use cmdline & path source for ':' (if you enabled `native_menu`, this won't work anymore).
                    cmp.setup.cmdline(':', {
                        mapping = cmp.mapping.preset.cmdline(),
                        sources = cmp.config.sources({
                            { name = 'path' }
                        }, {
                            { name = 'cmdline' }
                        }),
                        matching = { disallow_symbol_nonprefix_matching = false }
                    })
                end,
            }
        })
    end
}
