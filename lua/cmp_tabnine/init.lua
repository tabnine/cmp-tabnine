local cmp = require('cmp')
local source = require('cmp_tabnine.source')

local M = {}

M.setup = function()
  vim.schedule(function()
    local tabnine_source = source.new()
    cmp.register_source('cmp_tabnine', tabnine_source)
    vim.api.nvim_add_user_command('CmpTabnineHub', function()
      tabnine_source:open_tabnine_hub()
    end, { force = true })
  end)
end

return M
