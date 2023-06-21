local comment = require('Comment')

comment.setup {
    pre_hook = require('ts_context_commentstring.integrations.comment_nvim').create_pre_hook(),
}

vim.keymap.set("v", "<C-_>", "gc", { remap = true })
vim.keymap.set("n", "<C-_>", "gcc", { remap = true })
