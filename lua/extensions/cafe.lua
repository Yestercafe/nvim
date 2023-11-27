local M = {}

M.commands = {
    gst = function()
        vim.api.nvim_command(":!git status")
    end,
    glog = function()
        vim.api.nvim_command(":!git log --oneline --graph -10")
    end,
    gl = function()
        vim.api.nvim_command(":!git pull")
    end,
    cargo = {
        run = function()
            vim.api.nvim_command(":!cargo run")
        end,
        build = function()
            vim.api.nvim_command(":!cargo build")
        end,
        test = function()
            vim.api.nvim_command(":!cargo test")
        end,
    },
    cmr = function()
        vim.api.nvim_command(":!cmake -B./build -DCMAKE_EXPORT_COMPILE_COMMANDS=ON && make -C ./build && echo \"===== output =====\" && ./build/$(cat CMakeLists.txt | grep add_executable | sed \"s/\\s*add_executable\\s*(\\s*//g\" | cut -d \" \" -f 1)")
    end,
    cm = {
        clean = function()
            vim.api.nvim_command(":!rm -rf ./_build")
        end
    }
}

M.parse_args_line = function(line)
    local args = vim.split(vim.trim(line), "%s+")
    if args[1] == "Cafe" then
        table.remove(args, 1)
    end
    return args
end

M.cmd = function(args)
    local func = M.commands
    for _, arg in ipairs(args) do
        local lst = vim.tbl_filter(function(key)
            return key:find(arg) == 1
        end, vim.tbl_keys(func))
        if #lst == 1 then
            func = func[lst[1]]
        else
            print("Invalid Cafe command: `" .. table.concat(args, " ") .. "`")
            return
        end
    end
    if type(func) == "table" then
        print("Invalid Cafe command: `" .. table.concat(args, " ") .. "`, need more args")
    else
        func()
    end
end

M.setup = function()
    vim.api.nvim_create_user_command("Cafe", function(cmd)
        M.cmd(M.parse_args_line(cmd.args))
    end, {
        bang = true,
        nargs = "?",
        complete = function(_, line)
            local args = M.parse_args_line(line)
            if vim.trim(line) ~= line then
                table.insert(args, "")
            end

            local len = #args

            local i = 1
            local next = M.commands
            while i ~= len do
                local lst = vim.tbl_filter(function(key)
                    return key:find(args[i]) == 1
                end, vim.tbl_keys(next))
                if #lst == 1 then
                    local token = lst[1]
                    if next[token] ~= nil and type(next[token]) == "table" then
                        next = next[token]
                    else
                        return nil
                    end
                    i = i + 1
                end
            end

            return vim.tbl_filter(function(key)
                return key:find(args[len]) == 1
            end, vim.tbl_keys(next))
        end
    })
end

return M

