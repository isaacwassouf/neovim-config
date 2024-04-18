local M = {}

M.general = {
  n = {
    ["<A-j>"] = { ":m .+1<CR>==", "Move line up(n)" },
    ["<A-k>"] = { ":m .-2<CR>==", "Move line down(n)" },
    ["<leader>u"] = { ":UndotreeToggle<CR>", "Toggle Undotree" }
  },

  v = {
    ["<A-j>"] = { ":m '>+1<CR>gv=gv", "Move line up(v)" },
    ["<A-k>"] = { ":m '<-2<CR>gv=gv", "Move line down(v)" }
  }
}

return M
