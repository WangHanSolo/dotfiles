return {
       'nvim-treesitter/nvim-treesitter',
       dependencies = {
         { 'windwp/nvim-ts-autotag', opts = {} },
       },
       build = ':TSUpdate',
       event = 'BufReadPost',
       opts = {
         auto_install = true,
         ensure_installed = "maintained",
         highlight = { enable = true },
         indent = { enable = true },
     },
}
