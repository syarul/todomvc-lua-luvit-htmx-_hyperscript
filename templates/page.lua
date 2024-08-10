local module = {}
local toggleMain = require('templates.toggle-main')
local todoList = require('templates.todo-list')
local todoFooter = require('templates.todo-footer')

function module.Page(todos, filters)
  local html =
    '<html lang="en" data-framework="htmx">'
    .. '<head>'
    .. '  <meta charSet="utf-8" />'
    .. '  <title>HTMX • TodoMVC</title>'
    .. '  <link rel="stylesheet" href="https://unpkg.com/todomvc-common@1.0.5/base.css" type="text/css" />'
    .. '  <link rel="stylesheet" href="https://unpkg.com/todomvc-app-css/index.css" type="text/css" />'
    .. '  <script type="text/hyperscript" src="/hs/start-me-up._hs"></script>'
    .. '  <script type="text/hyperscript" src="/hs/main._hs"></script>'
    .. '  <script type="text/hyperscript" src="/hs/behaviors/toggle-main._hs"></script>'
    .. '  <script type="text/hyperscript" src="/hs/behaviors/toggle-footer._hs"></script>'
    .. '  <script type="text/hyperscript" src="/hs/behaviors/toggle-show._hs"></script>'
    .. '  <script type="text/hyperscript" src="/hs/behaviors/add-todo._hs"></script>'
    .. '  <script type="text/hyperscript" src="/hs/behaviors/footer._hs"></script>'
    .. '  <script type="text/hyperscript" src="/hs/behaviors/toggle-all._hs"></script>'
    .. '  <script type="text/hyperscript" src="/hs/behaviors/clear-completed._hs"></script>'
    .. '  <script type="text/hyperscript" src="/hs/behaviors/destroy._hs"></script>'
    .. '  <script type="text/hyperscript" src="/hs/behaviors/todo-count._hs"></script>'
    .. '  <script type="text/hyperscript" src="/hs/behaviors/todo-dblclick._hs"></script>'
    .. '  <script type="text/hyperscript" src="/hs/behaviors/todo-check._hs"></script>'
    .. '  <script type="text/hyperscript" src="/hs/behaviors/todo-edit._hs"></script>'
    .. '</head>'
    .. '<body>'
    .. '  <section class="todoapp"'
    .. '    _="'
    .. '      install ToggleMain end\n'
    .. '      install ToggleFooter end\n'
    .. '      install ToggleShow end\n'
    .. '  ">'
    .. '    <header class="header">'
    .. '      <h1>todos</h1>'
    .. '      <input'
    .. '        id="add-todo"'
    .. '        name="title"'
    .. '        class="new-todo"'
    .. '        placeholder="What needs to be done?"'
    .. '        _="install AddTodo"'
    .. '      />'
    .. '    </header>'
    .. '' .. toggleMain.ToggleMain(todos)
    .. '' .. todoList.TodoList(todos, filters)
    .. '' .. todoFooter.TodoFooter(todos, filters)
    .. '  </section>'
    .. '  <footer class="info" '
    .. '     _="\n'
    .. '       on load debounced at 10ms\n'
    .. '          call startMeUp()\n'
    .. '          hashCache()\n'
    .. '  ">'
    .. '    <p>Double-click to edit a todo</p>'
    .. '    <p>Created by <a href="http://github.com/syarul/">syarul</a></p>'
    .. '    <p>Part of <a href="http://todomvc.com">TodoMVC</a></p>'
    .. '    <img src="https://htmx.org/img/createdwith.jpeg" width="250" height="auto" />'
    .. '  </footer>'
    .. '</body>'
    .. '<script src="https://unpkg.com/todomvc-common@1.0.5/base.js"></script>'
    .. '<script src="https://unpkg.com/htmx.org@1.9.10"></script>'
    .. '<script src="https://unpkg.com/hyperscript.org/dist/_hyperscript.js"></script>'
    .. '</html>'

  return html
end

return module