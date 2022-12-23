local M = {}

-- more keybindings (LSP specific) are in lsp.lua

M.setup = function()
  lvim.leader = "space"
  -- add your own keymapping
  -- C - control
  -- S - shift
  -- A - alt
  -- MAC command key: don't try to use

  -- insert to normal mode
  -- save file
  lvim.keys.normal_mode["<C-s>"] = ":w<cr>"

  -- make the current tab wider or narrower
  lvim.keys.normal_mode["<C-p>"] = ":vertical resize -10<CR>"
  lvim.keys.normal_mode["<C-o>"] = ":vertical resize +10<CR>"

  lvim.keys.normal_mode["<S-l>"] = ":BufferLineCycleNext<CR>"
  lvim.keys.normal_mode["<S-h>"] = ":BufferLineCyclePrev<CR>"

  -- map emmet to control+z (easier to reach)
  vim.cmd [[
    inoremap jk <Esc>
    vnoremap jk <Esc>  

    " Moving lines with ^-j/k
    nnoremap <S-j> :m .+1<CR>==
    nnoremap <S-k> :m .-2<CR>==
    " inoremap <C-j> <Esc>:m .+1<CR>==gi
    " inoremap <C-k> <Esc>:m .-2<CR>==gi
    vnoremap <S-j> :m '>+1<CR>gv=gv
    vnoremap <S-k> :m '<-2<CR>gv=gv
    let g:user_emmet_leader_key='<C-z>'
  ]]

end

return M

-- vim.keymap.del("n", "<C-Up>")
-- unmap a default keymapping
-- override a default keymapping
-- lvim.keys.normal_mode["<C-q>"] = ":q<cr>" -- or vim.keymap.set("n", "<C-q>", ":q<cr>" )
