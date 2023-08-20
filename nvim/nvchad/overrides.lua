local M = {}

M.treesitter = {
  ensure_installed = {
    "bash",
    "http",
    "ini",
    "sql",
    "gitignore",
    "git_config",
    "diff",
    "regex",
    "json",
    "yaml",
    "vim",
    "lua",
    "html",
    "css",
    "scss",
    "javascript",
    "typescript",
    "tsx",
    "svelte",
    "astro",
    "rust",
    "c",
    "markdown",
    "markdown_inline",
    "yuck",
    "go",
    "nix",
    "python",
  },
  indent = {
    enable = true,
    -- disable = {
    --   "python"
    -- },
  },
}

M.mason = {
  ensure_installed = {
    -- lua stuff
    "lua-language-server",
    "stylua",

    -- web dev stuff
    "css-lsp",
    "html-lsp",
    "typescript-language-server",
    "deno",
    "prettier",

    -- c/cpp stuff
    "rust-analyzer",
    "clangd",
    "clang-format",
    -- "luaformatter",
    "python-lsp-server"
  },
}

-- git support in nvimtree
M.nvimtree = {
  git = {
    enable = true,
  },

  renderer = {
    highlight_git = true,
    icons = {
      show = {
        git = true,
      },
    },
  },
}

return M
