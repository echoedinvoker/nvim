return {
  "nvim-neorg/neorg",
  build = ":Neorg sync-parsers",
  dependencies = { "nvim-lua/plenary.nvim" },
  config = function()
    require("neorg").setup({
      load = {
        ["core.defaults"] = {}, -- Loads default behaviour
        ["core.summary"] = {},
        ["core.concealer"] = {
          config = {
            icon_preset = "diamond",
            icons = {
              todo = {
                uncertain = {
                  icon = "",
                },
              },
            },
          },
        }, -- Adds pretty icons to your documents
        ["core.dirman"] = { -- Manages Neorg workspaces
          config = {
            workspaces = {
              node = "~/notes/node",
              pomodoro = "~/notes/pomodoro",
              money = "~/notes/money",
              meaning = "~/notes/meaning",
              health = "~/notes/health",
              work = "~/notes/work",
              learnEng = "~/notes/learn-eng",
              tsc = "~/notes/tsc",
            },
            default_workspace = "node",
          },
        },
      },
    })
  end,
}
