local filetypes = {
    'html', 'javascript', 'typescript', 'javascriptreact', 'typescriptreact',
    'selvte', 'vue', 'tsx', 'jsx',
    'xml',
    'php',
    'markdown',
    'astro', 'glimmer', 'handlebars', 'hbs'
}
require('nvim-ts-autotag').setup({
    filetypes = filetypes
})
