return {
  {
    "nvim-treesitter/nvim-treesitter",
    opts = {
      -- 使用 gcc 编译，不依赖 tree-sitter CLI（避免 GLIBC 版本不兼容问题）
      compilers = { "gcc" },
    },
  },
}
