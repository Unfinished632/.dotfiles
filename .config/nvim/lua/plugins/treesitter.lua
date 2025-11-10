return{
  {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    config = function()
      local config = require("nvim-treesitter.configs")
      config.setup({
        ensure_installed = { "bash", "c", "css", "cpp",
                             "go", "html", "java", "javascript",
                             "json", "lua", "markdown", "markdown_inline",
                             "python", "rust", "tsx", "typescript", "c_sharp" },
        highlight = { enable = true },
        indent = { enable = true },
         })
     end
  }
}
