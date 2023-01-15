local opt = vim.opt --for conciseness

-- line numbers
opt.relativenumber = true
opt.number = true

-- tabs & indentation
opt.tabstop = 2 -- need test
opt.shiftwidth = 2
opt.expandtab = true
opt.autoindent = true

-- line wrapping
opt.wrap = false -- 창 크기에 따라 줄 바꿈 되지 않도록 설정

-- search settings
opt.ignorecase = true -- 대소문자 무시 검색 ex. "hello Hello" -> search "hello" -> [hello, Hello] | search "Hello" -> [hello, Hello]
opt.smartcase = true -- 위 대소문자 무시 검색에서 대문자로 검색 시 대문자가 포함되어 있는 문자만 찾음. ex. "hello Hello" -> search "hello" -> [hello, Hello] | search "Hello" -> [Hello]

-- cursor line
opt.cursorline = true -- 현재 커서 라인 보이기

-- appearance
opt.termguicolors = true
opt.background = "dark" -- need test
opt.signcolumn = "yes"

-- backspace
opt.backspace = "indent,eol,start"

-- clipboard
opt.clipboard:append("unnamedplus") -- use system clipboard as default register

-- split windows
opt.splitright = true
opt.splitbelow = true

opt.iskeyword:append("-")
