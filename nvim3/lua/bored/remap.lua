vim.g.mapleader = " "
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

-- General keymaps
vim.keymap.set("n", "<leader>wq", ":wq<CR>")       -- save and quit
vim.keymap.set("n", "<leader>qq", ":q!<CR>")       -- quit without saving
vim.keymap.set("n", "<leader>ww", ":w<CR>")        -- save
vim.keymap.set("n", "gx", ":!open <c-r><c-a><CR>") -- open URL under cursor

-- Toggle term
vim.keymap.set("n", "<space>h", ":ToggleTerm direction=horizontal<CR>")

vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

vim.api.nvim_set_keymap("n", "<leader>tf", "<Plug>PlenaryTestFile", { noremap = false, silent = false })

vim.keymap.set("n", "J", "mzJ`z")
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")
vim.keymap.set("n", "=ap", "ma=ap'a")
vim.keymap.set("n", "<leader>zig", "<cmd>LspRestart<cr>")

-- greatest remap ever
vim.keymap.set("x", "<leader>p", [["_dP]])

-- next greatest remap ever : asbjornHaland
vim.keymap.set({ "n", "v" }, "<leader>y", [["+y]])
vim.keymap.set("n", "<leader>Y", [["+Y]])

vim.keymap.set({ "n", "v" }, "<leader>d", "\"_d")

-- This is going to get me cancelled
vim.keymap.set("i", "<C-c>", "<Esc>")

vim.keymap.set("n", "<leader>f", function()
    require("conform").format({ bufnr = 0 })
end)

vim.keymap.set("n", "<C-k>", "<cmd>cnext<CR>zz")
vim.keymap.set("n", "<C-j>", "<cmd>cprev<CR>zz")
vim.keymap.set("n", "<leader>k", "<cmd>lnext<CR>zz")
vim.keymap.set("n", "<leader>j", "<cmd>lprev<CR>zz")

vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])
vim.keymap.set("n", "<leader>x", "<cmd>!chmod +x %<CR>", { silent = true })

vim.keymap.set("n", "<leader><leader>", function()
    vim.cmd("so")
end)
vim.keymap.set("n", '<leader>ee', "<cmd>NvimTreeToggle<CR>") 

-- * Nvim Pane Navigation: Ctrl + up/down/right/left
vim.keymap.set("n", "<C-Left>", "<C-w>h", opts)  -- h - Navigate Right
vim.keymap.set("n", "<C-Down>", "<C-w>j", opts)  -- j - Navigate Down
vim.keymap.set("n", "<C-Up>", "<C-w>k", opts)    -- k - Navigate Up
vim.keymap.set("n", "<C-Right>", "<C-w>l", opts) -- l - Navigate Left

-- * Nvim Pane Navigation: Ctrl + up/down/right/left
vim.keymap.set("n", "<C-h>", "<C-w>h", opts)  -- h - Navigate Right
vim.keymap.set("n", "<C-j>", "<C-w>j", opts)  -- j - Navigate Down
vim.keymap.set("n", "<C-k>", "<C-w>k", opts)    -- k - Navigate Up
vim.keymap.set("n", "<C-l>", "<C-w>l", opts) -- l - Navigate Left


-- terminal exit and Navigation
vim.keymap.set('t', '<esc>', [[<C-\><C-n>]], opts)
vim.keymap.set('t', '<C-h>', [[<Cmd>wincmd h<CR>]], opts)
vim.keymap.set('t', '<C-j>', [[<Cmd>wincmd j<CR>]], opts)
vim.keymap.set('t', '<C-k>', [[<Cmd>wincmd k<CR>]], opts)
vim.keymap.set('t', '<C-l>', [[<Cmd>wincmd l<CR>]], opts)
vim.keymap.set('t', '<C-w>', [[<C-\><C-n><C-w>]], opts)

--Run python
vim.keymap.set("n", "<leader>r", function()
  vim.cmd("w")  -- Save the file
  vim.cmd("belowright split | terminal python3 " .. vim.fn.expand("%"))
end, { noremap = true, silent = true, desc = "Run Python file" })

