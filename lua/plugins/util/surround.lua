---@type LazyPluginSpec
return {
  "nvim-mini/mini.surround",
  opts = function(_, opts)
    opts.custom_surroundings = {
      h = {
        input = { "%b<>", "^<().-()%s*>.*</.->$" },
        output = function()
          local tag = MiniSurround.user_input("Enter HTML tag: ")
          if tag == nil then
            return nil
          end
          return { left = "<" .. tag .. ">\n", right = "\n</" .. tag .. ">" }
        end,
      },

      ["⟨"] = { output = { left = "⟨", right = "⟩" } },
      ["⟩"] = { output = { left = "⟨ ", right = " ⟩" } },
      ["s"] = { output = { left = "⟨ ", right = " ⟩" } },
    }
  end,
}
