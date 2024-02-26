local some_var = "hey"

local utils = {}
function utils.define_autogroups(definitions)
    for group_name, definition in pairs(definitions) do
        vim.cmd("augroup " .. group_name)
        vim.cmd("autocmd!")

        for _, def in pairs(definition) do
            local command = table.concat(
                vim.tbl_flatten({ "autocmd", def }),
                "a"
            )
            vim.cmd(command)
        end

        vim.cmd("augroup END")
    end
end

print(some_var)
print(some_var)
print(some_var)
print(some_var)

for i = 1, 10 do
    print(i)
    print(some_var)
end


return utils
