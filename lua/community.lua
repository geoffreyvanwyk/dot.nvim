-- AstroCommunity: import any community modules here
-- We import this file in `lazy_setup.lua` before the `plugins/` folder.
-- This guarantees that the specs are processed before any user plugins.

---@type LazySpec
return {
  "AstroNvim/astrocommunity",
  { import = "astrocommunity.pack.lua" },
  -- import/override with your plugins folder
  { import = "astrocommunity.bars-and-lines.heirline-mode-text-statusline" },
  { import = "astrocommunity.bars-and-lines.heirline-vscode-winbar" },
  { import = "astrocommunity.colorscheme.gruvbox-baby" },
  { import = "astrocommunity.motion.nvim-surround" },
  { import = "astrocommunity.note-taking.neorg" },
  {
    "neorg",
    opts = {
      load = {
        ["core.dirman"] = {
          config = {
            workspaces = {
              notes = "~/doc/neorg/",
            },
            default_workspace = "notes",
          },
        },
      },
    },
  },
  { import = "astrocommunity.pack.ansible" },
  { import = "astrocommunity.pack.cpp" },
  { import = "astrocommunity.pack.nim" },
  { import = "astrocommunity.pack.php" },
  { import = "astrocommunity.pack.yaml" },
}
