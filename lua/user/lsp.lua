local M = {}

M.setup = function()

  -- installed language servers
  lvim.lsp.installer.setup.ensure_installed = {
    "sumeko_lua",
    "jsonls",
    "ember",
    "ember-language-server",
    "eslint-lsp",
    "javascript",
    "typescript",
    "typescriptreact",
    "tailwindcss",
    "glint-language-server",
    "glint",
    "cssls",
    "yaml",
    "stylelint",
    "bash",
  }

  require 'lspconfig'.eslint.setup {
    cmd = { "vscode-eslint-language-server", "--stdio", "--fix" },
    filetypes = {
      "javascript", "javascriptreact", "javascript.jsx", "typescript", "typescriptreact", "typescript.tsx", "vue",
      "svelte", "astro", "handlebars", "hbs"
    },
    codeActionOnSave = {
      enable = true,
      mode = "all"
    }
  }

  -- vim.cmd [[autocmd BufWritePre <buffer> lua vim.lsp.buf.formatting_sync()]]
  -- https://www.reddit.com/r/neovim/comments/oiyrvp/is_there_a_way_to_make_lsp_inline_diagnostic/
  lvim.lsp.on_attach_callback = function(client, bufnr)
    vim.api.nvim_create_autocmd("CursorHold", {
      buffer = bufnr,
      callback = function()
        local opts = {
          focusable = false,
          close_events = { "BufLeave", "CursorMoved", "InsertEnter", "FocusLost" },
          border = 'rounded',
          source = 'always',
          prefix = ' ',
          scope = 'cursor',
        }
        vim.diagnostic.open_float(nil, opts)
      end
    })

    -- turn off typescript language server for formatting
    if client.name == 'tsserver' then
      -- HACK: neovim 0.8 change client_capabilities => server_capabilities
      client.resolved_capabilities.document_formatting = false
      client.resolved_capabilities.document_range_formatting = false
    end
    -- Mappings.
    -- See `:help vim.lsp.*` for documentation on any of the below functions
    local bufopts = { noremap = true, silent = true, buffer = bufnr }
    vim.keymap.set('n', '<leader>`', ':CodeActionMenu<cr>', bufopts)
  end
end

return M
