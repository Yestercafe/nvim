local M = {}

M.setup = function()
    local imported = require("langs.imported")
    M.lss = { "clangd" }
    for _, ls in ipairs(M.lss) do
        imported.config[ls].setup {
            capabilities = imported.caps
        }
    end
end

M.dap_setup = function()
    local imported = require("langs.imported")
    local dap = imported.dap

    M.debuggers = { "codelldb", "cpptools" }

    dap.adapters.cppdbg = {
        id = "cppdbg",
        type = "executable",
        command = "OpenDebugAD7",
    }
    dap.adapters.codelldb = {
        id = "codelldb",
        type = "server",
        port = "${port}",
        executable = {
            command = "codelldb",   -- with Mason
            args = { "--port", "${port}" },
        }
    }

    dap.configurations.cpp = {
      {
        name = "(codelldb) Launch file",
        type = "codelldb",
        request = "launch",
        program = function()
          return vim.fn.input('Path to executable: ', vim.fn.getcwd() .. '/', 'file')
        end,
        cwd = '${workspaceFolder}',
        stopAtEntry = true,
      },
      {
        name = "(cpptools) Launch file",
        type = "cppdbg",
        request = "launch",
        program = function()
          return vim.fn.input('Path to executable: ', vim.fn.getcwd() .. '/', 'file')
        end,
        cwd = '${workspaceFolder}',
        stopAtEntry = true,
      },
      {
        name = '(cpptools) Attach to gdbserver :1234',
        type = 'cppdbg',
        request = 'launch',
        MIMode = 'gdb',
        miDebuggerServerAddress = 'localhost:1234',
        miDebuggerPath = '/usr/bin/gdb',
        cwd = '${workspaceFolder}',
        program = function()
          return vim.fn.input('Path to executable: ', vim.fn.getcwd() .. '/', 'file')
        end,
      },
    }
end

return M

