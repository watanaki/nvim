-- snacks.nvim: 一个集成了多种实用小工具的插件集合
-- 包括文件浏览器、通知、终端、git 集成等功能
-- <leader>e 打开的文件面板即由此插件提供
return {
  {
    "folke/snacks.nvim",
    opts = {
      picker = {
        sources = {
          explorer = {
            -- 默认显示隐藏文件（以 . 开头的文件/目录）
            hidden = true,
            -- 默认显示 gitignore 忽略的文件
            ignored = true,
          },
        },
      },
    },
  },
}
