local routes = vim.fn.expand('./var/cache/dev/url_generating_routes.php')

if vim.fn.filereadable(routes) == 1 then
  require('cmp').register_source('symfony_routes', require('cmp_symfony_routes'))
end
