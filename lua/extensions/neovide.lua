local M = {}

local clamp = function(x, lower_bound, upper_bound)
    if x > upper_bound then
        x = upper_bound
    end
    if x < lower_bound then
        x = lower_bound
    end
    return x
end

M.init = function(font, font_size, transparency)
    M.is_neovide = vim.g.neovide
    if M.is_neovide then
        local o = vim.o
        local g = vim.g

        M.font = font
        M.is_demo_mode = false
        M.transparency = transparency

        function M.apply_font_size()
            M.font_size = clamp(M.font_size, 8, 30)
            o.guifont = M.font .. ":h" .. tostring(M.font_size)
        end
        function M.increase_font_size(stride)
            M.font_size = M.font_size + stride
            return M
        end
        function M.decrease_font_size(stride)
            M.font_size = M.font_size - stride
            return M
        end
        function M.default_font_size()
            M.font_size = M._default_font_size
            return M
        end
        function M.set_font_size(_font_size)
            M.font_size = _font_size
            return M
        end
        function M.set_default_font_size(_font_size)
            M._default_font_size = _font_size
            M.font_size = _font_size
            return M
        end
        function M.increase_transparency()
            M.transparency = clamp(M.transparency + 0.05, 0, 1)
            g.neovide_transparency = M.transparency
        end
        function M.decrease_transparency()
            M.transparency = clamp(M.transparency - 0.05, 0, 1)
            g.neovide_transparency = M.transparency
        end

        M.set_default_font_size(font_size).apply_font_size()
        -- g.neovide_padding_top = 8
        -- g.neovide_padding_bottom = 8
        -- g.neovide_padding_left = 12
        -- g.neovide_padding_right = 12
        g.neovide_cursor_vfx_mode = "railgun"
        g.neovide_transparency = M.transparency
    end
end

return M

