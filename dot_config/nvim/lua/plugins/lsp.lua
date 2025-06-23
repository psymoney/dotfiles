-- add pyright to lspconfig
return {
  {
    "neovim/nvim-lspconfig",
    ---@class PluginLspOpts
    opts = {
      ---@type lspconfig.options
      servers = {
        -- pyright will be automatically installed with mason and loaded with lspconfig
        pyright = {
          on_init = function(client)
            local path = client.workspace_folders[1].name
            local venv_python = path .. "/.venv/bin/python"

            -- 유효한 가상환경인지 확인
            local stat = vim.loop.fs_stat(venv_python)
            if stat and stat.type == "file" then
              client.config.settings = {
                python = {
                  pythonPath = venv_python,
                },
              }
              client.notify("workspace/didChangeConfiguration", { settings = client.config.settings })
            end
          end,
        },
      },
      setup = {
        -- 모든 LSP 서버 공통 on_attach
        ["*"] = function(_, opts)
          vim.keymap.set("n", "<leader>lr", "<cmd>LspRestart<CR>", { desc = "Restart LSP" })
        end,
      },
    },
  },
}
