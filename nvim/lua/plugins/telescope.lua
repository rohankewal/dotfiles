return {
  "nvim-telescope/telescope.nvim",

  opts = {
    defaults = {
      file_ignore_patterns = { ".git/", "node_modules" },
      layout_config = {
        height = 0.90,
        width = 0.90,
        preview_cutoff = 0,
        horizontal = { preview_width = 0.60 },
        vertical = { width = 0.55, height = 0.9, preview_cutoff = 0 },
        prompt_position = "top",
      },
      path_display = { "smart" },
      prompt_position = "top",
      prompt_prefix = " ",
      selection_caret = " ",
      sorting_strategy = "ascending",
      vimgrep_arguments = {
        "rg",
        "--color=never",
        "--no-heading",
        "--hidden",
        "--with-filename",
        "--line-number",
        "--column",
        "--smart-case",
        "--trim", -- add this value
      },
    },
    pickers = {
      buffers = {
        prompt_prefix = "󰸩 ",
      },
      commands = {
        prompt_prefix = " ",
        layout_config = {
          height = 0.63,
          width = 0.78,
        },
      },
      command_history = {
        prompt_prefix = " ",
        layout_config = {
          height = 0.63,
          width = 0.58,
        },
      },
      git_files = {
        prompt_prefix = "󰊢 ",
        show_untracked = true,
      },
      find_files = {
        prompt_prefix = " ",
      },
      live_grep = {
        prompt_prefix = "󰱽 ",
      },
      grep_string = {
        prompt_prefix = "󰱽 ",
      },
    },
  },
}
