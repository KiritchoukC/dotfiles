local status_ok, dap = pcall(require, "dap")
if not status_ok then
  return
end

dap.adapters.chrome = {
    type = "executable",
    command = "node",
    args = {os.getenv("HOME") .. "/.local/bin/vscode-chrome-debug/out/src/chromeDebug.js"}
}

local config = {
    {
        type = "chrome",
        request = "attach",
        program = "${file}",
        cwd = vim.fn.getcwd(),
        sourceMaps = true,
        protocol = "inspector",
        port = 9222,
        webRoot = "${workspaceFolder}"
    }
}


dap.configurations.javascript = config
dap.configurations.typescript = config
dap.configurations.javascriptreact = config
dap.configurations.typescriptreact = config
