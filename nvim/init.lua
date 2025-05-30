
local disabled_providers = {
  "node",
  "perl",
  "ruby",
}

for _, provider in pairs(disabled_providers) do
  vim.g["loaded_" .. provider .. "_provider"] = 0
end


-- list of all config files

local config_files = {
  "options",
  "keymaps",
  "colors",
  "diagnostics",
  "statusline",
  "plugins",
  "lsp",
}

for _, file in pairs(config_files) do

  local success = pcall(require, file)
  if not success then
    vim.notify("Failed to load a config file " .. file)
    break
  end

end
