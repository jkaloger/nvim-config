return {
  "catgoose/nvim-colorizer.lua",
  event = "BufReadPre",
  opts = {
    tailwind = "lsp",
    tailwind_opts = {
      update_names = true
    }
  },
}
