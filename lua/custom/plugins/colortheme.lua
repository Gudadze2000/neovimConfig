return {
  {
    "catppuccin/nvim",
    name = "catppuccin",
    lazy = false,
    priority = 1000,
    opts = {
      flavour = "mocha",
      transparent_background = false,
      term_colors = true,

      styles = {
        comments = { "italic" },
        conditionals = { "italic" },
        keywords = {},
        functions = {"italic"},
        types = {},
      },

      integrations = {
        cmp = true,
        gitsigns = true,
        treesitter = true,
        treesitter_context = true,
        telescope = { enabled = true },
        mason = true,
        which_key = true,
        neotree = true,
        mini = { enabled = true },
        indent_blankline = { enabled = true, colored_indent_levels = false },
        semantic_tokens = true,
        native_lsp = {
          enabled = true,
          underlines = {
            errors = { "undercurl" },
            warnings = { "undercurl" },
            hints = { "underdotted" },
            information = { "underdotted" },
          },
        },
      },

      custom_highlights = function(c)
        return {
          -- ── Python: treesitter ──────────────────────────────
          -- self / cls stand out from regular variables
          ["@variable.builtin.python"] = { fg = c.red, style = { "italic" } },
          ["@variable.parameter.python"] = { fg = c.maroon, style = { "italic" } },

          -- decorators (@property, @dataclass, @app.route ...)
          ["@attribute.python"] = { fg = c.yellow, style = { "italic" } },
          ["@attribute.builtin.python"] = { fg = c.yellow, style = { "italic" } },

          -- None / True / False
          ["@constant.builtin.python"] = { fg = c.peach, style = { "bold" } },

          -- docstrings read as documentation, not as plain strings
          ["@string.documentation.python"] = { fg = c.teal, style = { "italic" } },

          -- built-ins (print, len, range, isinstance ...) vs your own functions
          ["@function.builtin.python"] = { fg = c.sky },
          ["@type.builtin.python"] = { fg = c.yellow, style = { "italic" } },

          -- imports and returns
          ["@keyword.import.python"] = { fg = c.mauve, style = { "italic" } },
          ["@keyword.return.python"] = { fg = c.mauve, style = { "bold" } },
          ["@keyword.exception.python"] = { fg = c.red },

          -- f-string braces and escapes
          ["@punctuation.special.python"] = { fg = c.pink, style = { "bold" } },
          ["@string.escape.python"] = { fg = c.pink },

          -- methods and constructors
          ["@function.method.call.python"] = { fg = c.blue },
          ["@constructor.python"] = { fg = c.sapphire },

          -- ── Python: LSP semantic tokens (basedpyright / pyright) ──
          ["@lsp.type.selfParameter.python"] = { fg = c.red, style = { "italic" } },
          ["@lsp.type.clsParameter.python"] = { fg = c.red, style = { "italic" } },
          ["@lsp.type.decorator.python"] = { fg = c.yellow, style = { "italic" } },
          ["@lsp.type.class.python"] = { fg = c.yellow },
          ["@lsp.type.namespace.python"] = { fg = c.lavender },
          ["@lsp.typemod.variable.readonly.python"] = { fg = c.peach },
          ["@lsp.mod.deprecated"] = { strikethrough = true },

          -- ── UI polish ───────────────────────────────────────
          CursorLineNr = { fg = c.mauve, style = { "bold" } },
          LineNr = { fg = c.surface2 },
          WinSeparator = { fg = c.surface1 },
          TreesitterContext = { bg = c.mantle },
          TreesitterContextLineNumber = { fg = c.mauve, bg = c.mantle },
          IblIndent = { fg = c.surface0 },
          IblScope = { fg = c.overlay0 },
        }
      end,
    },
    config = function(_, opts)
      require("catppuccin").setup(opts)
      vim.cmd.colorscheme "catppuccin"
    end,
  },
}
