return {
  -- Add MDX to treesitter
  {
    "nvim-treesitter/nvim-treesitter",
    opts = function(_, opts)
      if type(opts.ensure_installed) == "table" then
        vim.list_extend(opts.ensure_installed, { "markdown", "markdown_inline" })
      end
      -- Ensure mdx is highlighted
      vim.filetype.add({
        extension = {
          mdx = "markdown.mdx",
        },
      })
    end,
  },
}
