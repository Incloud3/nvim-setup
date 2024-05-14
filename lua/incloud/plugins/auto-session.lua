return {
  "rmagatti/auto-session",
  config = function()
    local auto_session = require("auto-session")

    auto_session.setup({
     -- pre_save_cmds = { "NvimTreeClose" },
     -- save_extra_cmds = {
     --   "NvimTreeOpen"
     -- },
     -- post_restore_cmds = {
      -- "NvimTreeOpen"
      --},
      auto_restore_enabled = false,
      auto_session_suppress_dirs = { "~/", "~/Dev/", "~/Downloads", "~/Documents", "~/Desktop/" },
    })

    local keymap = vim.keymap

    keymap.set("n", "<leader>wr", "<cmd>SessionRestore<CR>", { desc = "Restore session for cwd" })
    keymap.set("n", "<leader>ws", "<cmd>SessionSave<CR>", { desc = "Save session for auto session root dir" })
  end,
}
