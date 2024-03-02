# cmp-symfony-routes

[nvim-cmp](https://github.com/hrsh7th/nvim-cmp) source for symfony routes.  
The source is using `./var/cache/dev/url_generating_routes.php` file.

This plugin is a very simple implementation, the autocomplete won't work
if the above file doesn't exist.

![Autocomplete](./docs/autocomplete.png)

Routes are refreshed every 30 seconds.

## Setup

```lua
require('cmp').setup({
  sources = {
    { name = 'symfony_routes' },
  },
})
```

## Triggers

The plugin is activated for `php` and `twig` filetypes.  
The trigger character is a single quote, and the line must contains
`route`, `path` or `url`. This covers most of Symfony and twig
functions used to generate URLs:
- PHP
  - redirectToRoute
  - $router->generate
- Twig
  - path
  - url

## Configuration

There is no configuration at the moment.

## Todo

- Configure filetypes
- Configure input file
