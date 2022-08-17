-- Setting configuration options
local options = {
  backup = false,                          -- Creates a backup before overwriting a file.
  clipboard = "unnamedplus",               -- Allows neovim to access the system clipboard. For macos unnamedplus and unnamed is the same
  cmdheight = 1,                           -- Number of screen lines to use for the command-line.
  completeopt = { "menuone", "noselect" }, -- A comma-separated list of options for Insert mode completion. Mostly just for cmp.
  conceallevel = 0 ,                       -- So that `` is visible in markdown files.
  fileencoding = "utf-8",                  -- The encoding written to a file.
  hlsearch = true,                         -- Highlight all matches on previous search pattern.
  ignorecase = true,                       -- Ignore case in search patterns.
  mouse = "",                              -- Allow the mouse to be used in neovim.
  pumheight = 10,                          -- Maximum number of items to show in the popup menu.
  showmode = false,                        -- If in Insert, Replace or Visual mode put a message on the last line.
  showtabline = 2,                         -- Always show tabs.
  smartcase = true,                        -- Override the 'ignorecase' option if the search pattern contains upper case characters.
  smartindent = true,                      -- Do smart autoindenting when starting a new line.
  splitbelow = true,                       -- Force all horizontal splits to go below current window
  splitright = true,                       -- Force all vertical splits to go to the right of current window
  swapfile = false,                        -- Creates a swapfile. Swap files store changes you've made to the buffer
  termguicolors = true,                    -- set term gui colors (most terminals support this)
  timeoutlen = 1000,                       -- Time in milliseconds to wait for a mapped sequence to complete.
  undofile = true,                         -- When on, Vim automatically saves undo history to an undo file when writing a buffer to a file, and restores undo history from the same file on buffer read.
  updatetime = 300,                        -- If this many milliseconds nothing is typed the swap file will be written to disk.
  writebackup = false,                     -- If a file is being edited by another program (or was written to file while editing with another program), it is not allowed to be edited
  expandtab = true,                        -- In Insert mode: Use the appropriate number of spaces to insert a <Tab>.
  shiftwidth = 2,                          -- Number of spaces to use for each step of (auto)indent.
  tabstop = 2,                             -- Number of spaces that a <Tab> in the file counts for.
  cursorline = true,                       -- Highlight the text line of the cursor.
  number = true,                           -- Print the line number in front of each line.
  relativenumber = true,                   -- Show the line number relative to the line with the cursor in front of each line.
  numberwidth = 4,                         -- Minimal number of columns to use for the line number.
  signcolumn = "yes",                      -- Always show the sign column, otherwise it would shift the text each time.
  wrap = true,                             -- When off lines will not wrap and only part of long lines will be displayed.
  scrolloff = 8,                           -- Minimal number of screen lines to keep above and below the cursor.
  sidescrolloff = 8,                       -- The minimal number of screen columns to keep to the left and to the right of the cursor.
  guifont = "monospace:h17",               -- This is a list of fonts which will be used for the GUI version of Vim.
  colorcolumn = { 120 },                   -- Is a comma-separated list of screen columns that are highlighted with ColorColumn.
}

for k,v in pairs(options) do
  vim.opt[k] = v
end

-- Appending options to existing configurations
vim.opt.shortmess:append "c"               -- Don't give |ins-completion-menu| messages.
vim.opt.iskeyword:append "-"               -- This help vim to consider kebab-case string a word.
vim.opt.whichwrap:append "<,>,[,],h,l"     -- This causes the left and right arrow keys, as well as h and l, to move to the previous/next line after reaching first/last character in the line. ( < > are the cursor keys used in normal and visual mode, and [ ] are the cursor keys in insert mode).

-- Removing options from existing configurations
vim.opt.formatoptions:remove "cro"         -- This is a sequence of letters which describes how automatic formatting is to be done. TODO: this doesn't seem to work

-- Set your colorscheme
local colorscheme = "darkplus"

local status_ok, _ = pcall(vim.cmd, "colorscheme " .. colorscheme)
if not status_ok then
  vim.notify("colorscheme " .. colorscheme .. " not found!")
  return
end
