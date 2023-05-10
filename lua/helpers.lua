-- set indent length to 2/4
function set_indent_2()
  vim.o.tabstop = 2
  vim.o.shiftwidth = 2
  vim.o.softtabstop = 2
  print('Indent width set to 2')
end

function set_indent_4()
  vim.o.tabstop = 4
  vim.o.shiftwidth = 4
  vim.o.softtabstop = 4
  print('Indent width set to 4')
end

