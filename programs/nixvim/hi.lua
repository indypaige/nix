local ghcid = "ghcid"
local ghci  = "cabal v2-repl"

function open_term(cmd)
   vim.cmd.vnew()
   vim.cmd.term(cmd)
end

function open_id(x, y)
   open_term(ghcid)
   vim.cmd.wincmd("L")

   vim.api.nvim_win_set_width(x, y)

   vim.cmd.startinsert()
end

function open_repl(x, y)
   open_term(ghci)

   vim.cmd.wincmd("J")
   vim.api.nvim_win_set_height(x, y)

   vim.cmd.startinsert()
end

vim.cmd[[tnoremap <Esc> <C-\><C-n>]]
vim.cmd[[nnoremap <Tab> <C-w>w]]
