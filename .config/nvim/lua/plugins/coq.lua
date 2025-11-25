return{
  "neovim/nvim-lspconfig", -- REQUIRED: for native Neovim LSP integration
  lazy = false, -- REQUIRED: tell lazy.nvim to start this plugin at startup
  dependencies = {
    -- main one
    { "ms-jpq/coq_nvim", branch = "coq" },

    -- 9000+ Snippets
    { "ms-jpq/coq.artifacts", branch = "artifacts" },
    { 'ms-jpq/coq.thirdparty', branch = "3p" }
  },
  init = function()
    vim.g.coq_settings = {
        auto_start = true,
    }
  end,
  config = function()
    local coq = require "coq"
    vim.lsp.config('*', coq.lsp_ensure_capabilities())

    -- C/C++
    vim.lsp.enable("clangd")
    vim.lsp.enable("neocmake")

    -- Rust
    vim.lsp.enable("rust_analyzer")

    -- Zig
    vim.lsp.enable("zls")

    -- C#
    vim.lsp.enable("omnisharp")

    -- Godot
    vim.lsp.enable("gdscript")
    vim.lsp.enable("gdshader_lsp")

    -- Web
    vim.lsp.enable("html")
    vim.lsp.enable("tailwindcss")
    vim.lsp.enable("denols") -- Javascript, Typescript
    vim.lsp.enable("phpactor") -- PHP

    -- Java
    vim.lsp.enable("jdtls")

    -- JSON
    vim.lsp.enable("jsonls")

    -- Docker
    vim.lsp.enable("dockerls")

    -- Lua
    vim.lsp.enable("lua_ls")

    -- Markdwon
    vim.lsp.enable("marksman")

    -- Python
    vim.lsp.enable("pylsp")
  end,
}
