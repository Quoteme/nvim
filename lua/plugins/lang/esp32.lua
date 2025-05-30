return {
  {
    "quoteme/esp32.nvim",
    branch = "personal",
    cond = function()
      return vim.fn.filereadable(vim.fn.expand("sdkconfig"))
    end,
  },
}
