
lua << EOF
local mc = require("multicursor-nvim")

mc.setup()

local set = vim.keymap.set

-- Agregar o saltar cursor arriba/abajo
set({"n", "v"}, "<up>", function() mc.lineAddCursor(-1) end)
set({"n", "v"}, "<down>", function() mc.lineAddCursor(1) end)
set({"n", "v"}, "<space><up>", function() mc.lineSkipCursor(-1) end)
set({"n", "v"}, "<space><down>", function() mc.lineSkipCursor(1) end)

-- Agregar o saltar coincidencias
set({"n", "v"}, "<space>n", function() mc.matchAddCursor(1) end)
set({"n", "v"}, "<space>-", function() mc.matchSkipCursor(1) end)
set({"n", "v"}, "<space>N", function() mc.matchAddCursor(-1) end)

-- Agregar todas las coincidencias
set({"n", "v"}, "<space>A", mc.matchAllAddCursors)

-- Navegar entre cursores
set({"n", "v"}, "<left>", mc.nextCursor)
set({"n", "v"}, "<right>", mc.prevCursor)

-- Borrar cursor
set({"n", "v"}, "<space>x", mc.deleteCursor)

-- Clic para agregar cursor
set("n", "<c-leftmouse>", mc.handleMouse)

-- Activar/desactivar cursores con Ctrl+Q
set({"n", "v"}, "<c-q>", mc.toggleCursor)
set({"n", "v"}, "<space><c-q>", mc.duplicateCursors)

-- Escape para deshabilitar cursores
set("n", "<esc>", function()
    if not mc.cursorsEnabled() then
        mc.enableCursors()
    elseif mc.hasCursors() then
        mc.clearCursors()
    end
end)

-- Restaurar cursores borrados accidentalmente
-- set("n", "<space>gv", mc.restoreCursors)

-- Alinear cursores
set("n", "<space>a", mc.alignCursors)

-- Configuración de resaltado
vim.api.nvim_set_hl(0, "MultiCursorCursor", { link = "Cursor" })
vim.api.nvim_set_hl(0, "MultiCursorVisual", { link = "Visual" })
vim.api.nvim_set_hl(0, "MultiCursorSign", { link = "SignColumn" })
vim.api.nvim_set_hl(0, "MultiCursorDisabledCursor", { link = "Visual" })
vim.api.nvim_set_hl(0, "MultiCursorDisabledVisual", { link = "Visual" })
vim.api.nvim_set_hl(0, "MultiCursorDisabledSign", { link = "SignColumn" })
EOF

