-- Require the 'rose-pine' plugin and configure it
require('rose-pine').setup({
    disable_background = true
})

-- Define a function called ColorMyPencils that takes an optional 'color' parameter
function ColorMyPencils(color)
    -- If no color is provided, default to "rose-pine"
    color = color or "rose-pine"

    -- Set the Neovim color scheme to the specified color
    vim.cmd.colorscheme(color)

    -- Set the background color of the "Normal" highlight group to "none"
    vim.api.nvim_set_hl(0, "Normal", { bg = "none" })

    -- Set the background color of the "NormalFloat" highlight group to "none"
    vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
end

-- Call the ColorMyPencils function without providing a specific color
ColorMyPencils()

