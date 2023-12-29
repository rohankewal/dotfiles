-- import notify plugin safely
local notify_setup, notify = pcall(require, "notify")
if not notify_setup then
  return
end

notify.setup({
  opts = {
    background_colour = "#2E3440",
    stages = "static",
    timeout = 1500,
  },
})
