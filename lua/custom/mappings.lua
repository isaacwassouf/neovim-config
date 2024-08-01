local M = {}

M.general = {
  n = {
    ["<A-j>"] = { ":m .+1<CR>==", "Move line up(n)" },
    ["<A-k>"] = { ":m .-2<CR>==", "Move line down(n)" },
    ["<leader>u"] = { ":UndotreeToggle<CR>", "Toggle Undotree" },
    ["<leader>p"] = {"\"0p", "Paste from the 0 register"}
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
       {replace_keycodes = true, nowait=true, silent=true, expr=true, noremap=true}
      }
  }
}

return M
