require('regexplainer').setup {
    -- 'narrative'
    mode = 'narrative',
    -- automatically show the explainer when the cursor enters a regexp
    auto = true,

    -- filetypes (i.e. extensions) in which to run the autocommand
    filetypes = {
        'html',
        'js',
        'cjs',
        'mjs',
        'ts',
        'jsx',
        'tsx',
        'cjsx',
        'mjsx',
    },

    -- Whether to log debug messages
    debug = false,

    -- 'split', 'popup'
    display = 'popup',

    mappings = {
        toggle = '<leader>R',
        -- examples, not defaults:
        -- show = 'gS',
        -- hide = 'gH',
        -- show_split = 'gP',
        -- show_popup = 'gU',
    },

    narrative = {
        separator = '\n',
    },
}
