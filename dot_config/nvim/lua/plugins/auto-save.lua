return {
  -- in plugins/init.lua or a similar location
  {
    "okuuva/auto-save.nvim",
    config = function()
      require("auto-save").setup({
        -- Optional: Customize settings here
        -- For example, to enable autosave on specific events:
        -- events = { "InsertLeave", "TextChanged" },
        -- debounce_delay = 1000, -- 1 second debounce
      })
    end,
  },
}
