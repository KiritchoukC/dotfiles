local status_ok, persisted = pcall(require, "persisted")
if not status_ok then
  return
end

persisted.setup({
  save_dir = vim.fn.expand(vim.fn.stdpath("data") .. "/sessions/"), -- directory where session files are saved
  use_git_branch = false, -- create session files based on the branch of the git enabled repository
  autosave = true, -- automatically save session files when exiting Neovim
  autoload = true, -- automatically load the session for the cwd on Neovim startup
  allowed_dirs = nil, -- table of dirs that the plugin will auto-save and auto-load from
  ignored_dirs = nil
})
