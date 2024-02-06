vim.g.mapleader = " "
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

vim.keymap.set("n", "J", "mzJ`z")
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

vim.keymap.set("n", "<leader>vwm", function()
    require("vim-with-me").StartVimWithMe()
end)
vim.keymap.set("n", "<leader>svwm", function()
    require("vim-with-me").StopVimWithMe()
end)

-- greatest remap ever
vim.keymap.set("x", "<leader>p", [["_dP]])

-- next greatest remap ever : asbjornHaland
vim.keymap.set({"n", "v"}, "<leader>y", [["+y]])
vim.keymap.set("n", "<leader>Y", [["+Y]])

vim.keymap.set({"n", "v"}, "<leader>d", [["_d]])

-- This is going to get me cancelled
vim.keymap.set("i", "<C-c>", "<Esc>")

vim.keymap.set("n", "Q", "<nop>")
vim.keymap.set("n", "<C-f>", "<cmd>silent !tmux neww tmux-sessionizer<CR>")
vim.keymap.set("n", "<leader>f", vim.lsp.buf.format)

vim.keymap.set("n", "<C-k>", "<cmd>cnext<CR>zz")
vim.keymap.set("n", "<C-j>", "<cmd>cprev<CR>zz")
vim.keymap.set("n", "<leader>k", "<cmd>lnext<CR>zz")
vim.keymap.set("n", "<leader>j", "<cmd>lprev<CR>zz")

vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])
vim.keymap.set("n", "<leader>x", "<cmd>!chmod +x %<CR>", { silent = true })

vim.keymap.set("n", "<leader>vpp", "<cmd>e ~/.dotfiles/nvim/.config/nvim/lua/theprimeagen/packer.lua<CR>");
vim.keymap.set("n", "<leader>mr", "<cmd>CellularAutomaton make_it_rain<CR>");

vim.keymap.set("n", "<leader><leader>", function()
    vim.cmd("so")
end)

-- Debug
vim.keymap.set({ "n", "t" }, "<A-o>",function() require "dap".step_out() end,
    { silent = true, desc = "step out" })
vim.keymap.set({ "n", "t" }, "<A-i>", function() require "dap".step_into() end,
    { silent = true, desc = "step into" })
vim.keymap.set({ "n", "t" }, "<A-j>", function() require "dap".step_over() end,
    { silent = true, desc = "step over" })
vim.keymap.set({ "n", "t" }, "<A-h>", function() require "dap".continue() end,
    { silent = true, desc = "continue" })
vim.keymap.set({ "n", "t" }, "<A-k>", function() require("dap.ui.widgets").hover() end,
    { silent = true, desc = "caculate expr" })
vim.keymap.set("n", "<F5>", function() require "dap".toggle_breakpoint() end,
    { silent = true, desc = "toggle breakpoint" })

-- cmake
vim.keymap.set("n", "<leader>cg", "<cmd>CMakeGenerate<CR>", { desc = "Generate" })
vim.keymap.set("n", "<leader>cx", "<cmd>CMakeGenerate!<CR>", { desc = "Clean and generate" })
vim.keymap.set("n", "<leader>cb", "<cmd>CMakeBuild<CR>", { desc = "Build" })
vim.keymap.set("n", "<leader>cr", "<cmd>CMakeRun<CR>", { desc = "Run" })
vim.keymap.set("n", "<leader>cd", "<cmd>CMakeDebug<CR>", { desc = "Debug" })
vim.keymap.set("n", "<leader>cy", "<cmd>CMakeSelectBuildType<CR>", { desc = "Select Build Type" })
vim.keymap.set("n", "<leader>ct", "<cmd>CMakeSelectBuildTarget<CR>", { desc = "Select Build Target" })
vim.keymap.set("n", "<leader>cl", "<cmd>CMakeSelectLaunchTarget<CR>", { desc = "Select Launch Target" })
vim.keymap.set("n", "<leader>co", "<cmd>CMakeOpen<CR>", { desc = "Open CMake Console" })
vim.keymap.set("n", "<leader>cc", "<cmd>CMakeClose<CR>", { desc = "Close CMake Console" })
vim.keymap.set("n", "<leader>ci", "<cmd>CMakeInstall<CR>", { desc = "Intall CMake target" })
vim.keymap.set("n", "<leader>cn", "<cmd>CMakeClean<CR>", { desc = "Clean CMake target" })
vim.keymap.set("n", "<leader>cs", "<cmd>CMakeStop<CR>", { desc = "Stop CMake Process" })
vim.keymap.set("n", "<leader>cp", "<cmd>cd %:p:h<CR> ", { desc = "Change pwd to current file" })

-- Format python with black
vim.keymap.set("n", "<leader>blk", ":!black %<CR>", {desc = "Format Python file with black"})

-- colcon build with compile_commands.json
vim.keymap.set("n", "<C-C>", ":!colcon build --cmake-args -DCMAKE_EXPORT_COMPILE_COMMANDS=ON --symlink-install && cp build/compile_commands.json .<CR>")
