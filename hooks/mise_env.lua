-- Reads the first line of a pass file
--- @param name string
--- @return string|nil
local function read_password(name)
    local handle, errmsg = io.popen("pass show " .. name)
    -- Read only the first line
    local password = handle:read("*l")
    suc, exitcode, code = handle:close()

    return password
end

function PLUGIN:MiseEnv(ctx)

    local env_vars = {}

    for env_var_name, password_name in pairs(ctx.options) do
        local password = read_password(password_name)
        if password == nil then
            error("Could not read password for " .. password_name)
        end
        table.insert(env_vars, {key = env_var_name, value = password})
    end
    return env_vars

end
