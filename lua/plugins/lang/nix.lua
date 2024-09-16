return {
  {
    "nvim-telescope/telescope.nvim",
    branch = "0.1.x", -- Recommended
    dependencies = {
      "nvim-lua/plenary.nvim",
      "mrcjkb/telescope-manix",
      -- ...
    },
  },
  -- add nidx to lspconfig
  {
    "neovim/nvim-lspconfig",
    ---@class PluginLspOpts
    opts = {
      ---@type lspconfig.options
      servers = {
        nixd = {
          cmd = { "nixd" },
          settings = {
            nixd = {
              nixpkgs = {
                expr = "import <nixpkgs> { }",
              },
              formatting = {
                command = { "nixfmt" },
              },
              options = {
                nixos = {
                  expr = '(builtins.getFlake ("git+file://" + toString ./.)).nixosConfigurations.k-on.options',
                },
                home_manager = {
                  expr = '(builtins.getFlake ("git+file://" + toString ./.)).homeConfigurations."ruixi@k-on".options',
                },
              },
            },
          },
        },
      },
    },
  },
}
