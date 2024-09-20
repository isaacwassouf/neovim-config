local M = {}

M.general = {
  n = {
    ["<A-j>"] = { ":m .+1<CR>==", "Move line up(n)" },
    ["<A-k>"] = { ":m .-2<CR>==", "Move line down(n)" },
    ["<leader>u"] = { ":UndotreeToggle<CR>", "Toggle Undotree" },

    ["<leader>a"] = {
      function()
        require("harpoon"):list():add()
      end,
      "Paste from the 0 register"
    },

    ["<C-e>"] = {
      function()
        local harpoon = require("harpoon")
        harpoon.ui:toggle_quick_menu(harpoon:list())
      end,
      "Paste from the 0 register"
    },

  },

  v = {
    ["<A-j>"] = { ":m '>+1<CR>gv=gv", "Move line up(v)" },
    ["<A-k>"] = { ":m '<-2<CR>gv=gv", "Move line down(v)" }
  },
}

M.copilot = {
  i = {
    ["<C-l>"] = {
      function()
        vim.fn.feedkeys(vim.fn['copilot#Accept'](), '')
      end,
      "Copilot Accept",
      { replace_keycodes = true, nowait = true, silent = true, expr = true, noremap = true }
    }
  }
}

return M
