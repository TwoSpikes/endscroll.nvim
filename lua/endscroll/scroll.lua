local api = vim.api
local fn = vim.fn
local opts = require('endscroll.config').opts
local scroll_key = api.nvim_replace_termcodes('<C-e>', true, true, true)

local function scroll()
    local count = vim.v.count
    local down_key = count == 0 and 'gj' or 'j'

    -- check for disabled filetype
    if vim.tbl_contains(opts.disabled_filetypes, vim.o.filetype) then
        api.nvim_feedkeys(down_key, 'n', false)
        return
    end

    local scrolloff = vim.o.scrolloff
    local last_line = fn.line('$')
    local current_line = fn.line('.')
    local top_line = fn.line('w0')
    local count1 = vim.v.count1



    for _ = 1, count1, 1 do
        local above = api.nvim_win_text_height(0, { start_row = top_line - 1, end_row = current_line - 1}).all - 1
        local below = current_line == last_line and 0 or api.nvim_win_text_height(0, { start_row = current_line - 1, end_row = last_line - 1}).all - 2

        if current_line == last_line then
            if above > scrolloff and opts.scroll_at_end then
                api.nvim_feedkeys(scroll_key, 'n', false)
                goto continue
            else
                return
            end
        end

        if below < scrolloff and above >= scrolloff and vim.fn.winline() > vim.fn.winheight(vim.fn.winnr()) - scrolloff - 1 then
            api.nvim_feedkeys(down_key .. scroll_key, 'n', false)
            goto continue
        end

        api.nvim_feedkeys(down_key, 'n', true)

        ::continue::
        if current_line < last_line - 1 then
            current_line = current_line + 1
        end
    end

end


return scroll
