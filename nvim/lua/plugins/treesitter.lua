return {
    "nvim-treesitter/nvim-treesitter",
    "nvim-treesitter/playground",
    event = { "BufReadPre", "BufNewFile" },
    build = ":TSUpdate",
    dependencies = {
        "windwp/nvim-ts-autotag",
    },
    config = function()
        local treesitter = require("nvim-treesitter.configs")

		treesitter.setup({
			-- A list of parser names, or "all" (the listed parsers MUST always be installed)
			ensure_installed = { "c", "javascript", "typescript", "c_sharp","css","kotlin", "go","java", "lua", "vim", "vimdoc", "query", "markdown", "markdown_inline" },

			-- Install parsers synchronously (only applied to `ensure_installed`)
			sync_install = false,

			-- Automatically install missing parsers when entering buffer
			-- Recommendation: set to false if you don't have `tree-sitter` CLI installed locally
			auto_install = true,

			highlight = {
				enable = true,

				-- Set this to `true` if you depend on 'syntax' being enabled (like for indentation).
				-- Using this option may slow down your editor, and you may see some duplicate highlights.
				-- Instead of true it can also be a list of languages
				additional_vim_regex_highlighting = false,
			},
		})
    end,
}
