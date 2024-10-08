local module = {}
local filter = require('templates.filter')
local clearCompleted = require('templates.clear-completed')

function module.TodoFooter(todos, filters)
  if #todos ~= 0 then
    return
        '<footer '
        ..  'class="footer" '
        ..  '_="install Footer" '
        ..  '>'
        ..  '<span '
        ..    'class="todo-count" '
        ..    'hx-trigger="load" '
        ..    '_="install TodoCount"'
        ..  '>'
        ..  '</span>'
        ..    filter.Filter(filters)
        ..    clearCompleted.ClearCompleted(todos)
        .. '</footer>'
  else
    return '\n'
  end
end

return module