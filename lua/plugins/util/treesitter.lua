return {
  {
    "mtrajano/tssorter.nvim",
    version = "*", -- latest stable version, use `main` to keep up with the latest changes
    vscode = true,
    ---@module "tssorter"
    ---@type TssorterOpts
    opts = {
      -- leave empty for the default config or define your own sortables in here. They will add, rather than
      -- replace, the defaults for the given filetype
      sortables = {
        nix = {
          body = {
            node = "binding",
          },
        },
      },
    },
  },
}
