//------------------------------------------------------------------------------------- 
// see https://github.com/SophiCeleste/SKSettings/blob/main/config.js 
//     https://github.com/Marin-Kitagawa/surfingkeys_config/blob/main/settings.js
//
// ------------ VIM-like operation ------------
// backward, forward 
// open new tab, new tab with google, baidu etc. 
// open some bookmared webs, like gemini, chatgpt, grok, deepseek and so on ...
// tab movement
// copy current link, copy some text ... 
// refresh the webpages
// 

// ------------ TODOs ------------
// Note: Surfingkeys is doing its best to make full use of keyboard for web browsing, but there are some limitations from Google Chrome itself, please see Brook Build of Chromium for a more thorough experience. Maybe in the futhre we can turn to Chromium ..


const maps = {}

maps.normal = [
    //---------------------------- Unused, Deprecated  ---------------------------- 
    // domain: /github\.com/  // only work for github, if it's null then work for global
    { old: '<CTRL-i>',     new: '', hint: 'Open input field with vim editor',         domain: '' },
    { old: '<Ctrl-Alt-i>', new: '', hint: 'Open input field with vim editor',         domain: '' },
    { old: ';gt',          new: '', hint: 'Gather filtered tabs into current window', domain: '' },
    { old: ';gw',          new: '', hint: 'Gather all tabs into current window',      domain: '' },
    { old: 'gu',           new: '', hint: 'Go up one path in the URL',                domain: '' },
    { old: 'gT',           new: '', hint: 'Go to first activated tab',                domain: '' },
    { old: 'gt',           new: '', hint: 'Go to last activated tab',                 domain: '' },
    { old: ';u',           new: '', hint: 'Edit URL and open in new tab',             domain: '' },
    { old: ';U',           new: '', hint: 'Edit URL and reload',                      domain: '' },
    { old: 'F',            new: '', hint: 'Tab history forward',                      domain: '' },
    { old: 'B',            new: '', hint: 'Tab history back',                         domain: '' },
    { old: '<Ctrl-6>',     new: '', hint: 'Go to last used tab',                      domain: '' },
    { old: 'sg',           new: '', hint: 'Search Google',                            domain: '' },
    { old: 'sd',           new: '', hint: 'Search Duckduckgo',                        domain: '' },
    { old: 'sb',           new: '', hint: 'Search Baidu',                             domain: '' },
    { old: 'sw',           new: '', hint: 'Search Bing',                              domain: '' },
    { old: 'yG',           new: '', hint: 'Yank full page',                           domain: '' },
    { old: 'yS',           new: '', hint: 'Yank scrollable element',                  domain: '' },
    { old: 'ymv',          new: '', hint: 'Yank text multiple elements',              domain: '' },
    { old: 'yma',          new: '', hint: 'Yank multiple URLs',                       domain: '' },
    { old: 'ymc',          new: '', hint: 'Yank multiple columns',                    domain: '' },
    { old: 'yg',           new: '', hint: 'Yank current page',                        domain: '' },
    { old: 'ya',           new: '', hint: 'Yank link URL',                            domain: '' },
    { old: 'yc',           new: '', hint: 'Yank column',                              domain: '' },
    { old: 'yq',           new: '', hint: 'Yank pre text',                            domain: '' },
    { old: 'ys',           new: '', hint: 'Yank source',                              domain: '' },
    { old: 'yj',           new: '', hint: 'Yank settings',                            domain: '' },
    { old: 'yY',           new: '', hint: 'Yank URL of all tabs',                     domain: '' },
    { old: 'yh',           new: '', hint: 'Yank host',                                domain: '' },
    { old: 'yl',           new: '', hint: 'Yank title',                               domain: '' },
    { old: 'yQ',           new: '', hint: 'Yank query history of OmniQuery',          domain: '' },
    { old: 'yp',           new: '', hint: 'Yank form POST',                           domain: '' },
    { old: 'yd',           new: '', hint: 'Yank downloading URL',                     domain: '' },
    { old: 'cq',           new: '', hint: 'Query word with hints',                    domain: '' },
    { old: 'cc',           new: '', hint: 'Open link clipboard / selected',           domain: '' },
    { old: ';pp',          new: '', hint: 'Paste HTML to current page',               domain: '' },
    { old: ';pj',          new: '', hint: 'Restore settings from keyboard',           domain: '' },
    { old: ';pf',          new: '', hint: 'Fill form from clipboard',                 domain: '' },
    { old: ';cq',          new: '', hint: 'Clear all URLs in queue',                  domain: '' },
    { old: 'ga',           new: '', hint: 'Open Chrome about',                        domain: '' },
    { old: 'gb',           new: '', hint: 'Open Chrome bookmarks',                    domain: '' },
    { old: 'gc',           new: '', hint: 'Open Chrome cache',                        domain: '' },
    { old: 'gd',           new: '', hint: 'Open Chrome downloads',                    domain: '' },
    { old: 'gh',           new: '', hint: 'Open Chrome history',                      domain: '' },
    { old: 'gk',           new: '', hint: 'Open Chrome cookies',                      domain: '' },
    { old: 'ge',           new: '', hint: 'Open Chrome extensions',                   domain: '' },
    { old: 'gn',           new: '', hint: 'Open Chrome net-internals',                domain: '' },
    { old: ';pm',          new: '', hint: 'Preview markdown',                         domain: '' },
    { old: 'cp',           new: '', hint: 'Toggle proxy',                             domain: '' },
    { old: ';pa',          new: '', hint: 'Proxy always',                             domain: '' },
    { old: ';pb',          new: '', hint: 'Proxy byhost',                             domain: '' },
    { old: ';pd',          new: '', hint: 'Proxy direct',                             domain: '' },
    { old: ';ps',          new: '', hint: 'Proxy system',                             domain: '' },
    { old: ';pc',          new: '', hint: 'Proxy clear',                              domain: '' },
    { old: ';cp',          new: '', hint: 'Copy proxy info',                          domain: '' },
    { old: ';ap',          new: '', hint: 'Apply proxy info from clipboard',          domain: '' },
    { old: 'gr',           new: '', hint: 'Read text from clipboard / selected',      domain: '' },
    { old: ';ph',          new: '', hint: 'Paste history form clipboard',             domain: '' },
    { old: ';yh',          new: '', hint: 'Yank history',                             domain: '' },
    { old: 'on',           new: '', hint: 'Open new tab',                             domain: '' },

    //---------------------------- Help ---------------------------- 
    { old: '<Alt-s>', new: '<Alt-;>', hint: 'Toggle SurfingKeys on current site',                                      domain: '' },
    { old: '<Alt-i>', new: 'p',       hint: 'Enter pass through mode to temporarily suppress SurfingKeys',             domain: '' },
    { old: 'p',       new: 'ep',      hint: 'Enter ephemeral pass through mode to temporarily suppress SurfingKeys',   domain: '' },
    { old: '?',       new: '?',       hint: 'Show help',                                                               domain: '' },
    { old: ';ql',     new: '<Ctrl>.', hint: 'Show last action',                                                        domain: '' },
    { old: '.',       new: '.',       hint: 'Repeat last action',                                                      domain: '' },

    //---------------------------- Mouse Click ---------------------------- 
    { old: 'cf',       new: ';f',  hint: 'Open multiple linew in a new tab',                domain: '' },
    { old: 'gi',       new: 'gi',  hint: 'Go to the first input field',                     domain: '' },
    { old: 'gf',       new: 'F',   hint: 'Open a link in a non-active new tab',             domain: '' },
    { old: 'C',        new: 'nf',  hint: 'Open a link in a non-active new tab',             domain: '' },
    { old: '[[',       new: '[[',  hint: 'Clicks the previous link on the current page',    domain: '' },
    { old: ']]',       new: ']]',  hint: 'Clicks the next link on the current page',        domain: '' },
    { old: ';m',       new: ';m',  hint: 'Mouse out final element',                         domain: '' },
    { old: ';fs',      new: 'sh',  hint: 'Display hints to focus scrollable elements',      domain: '' },
    { old: ';di',      new: ';di', hint: 'Download image',                                  domain: '' },
    { old: 'i',        new: 'i',   hint: 'Select input field',                              domain: '' },
    { old: 'I',        new: 'I',   hint: 'Open input field with vim editor',                domain: '' },
    { old: 'O',        new: 'O',   hint: 'Open detected linew from selected text',          domain: '' },
    { old: 'f',        new: 'f',   hint: 'Open a link in the current tab',                  domain: '' },
    { old: 'af',       new: 'af',  hint: 'Open a link in an active new tab',                domain: '' },
    { old: '<CTRL-h>', new: 'mov', hint: 'Mouse over element',                              domain: '' },
    { old: '<CTRL-j>', new: 'mou', hint: 'Mouse out element',                               domain: '' },
    { old: 'q',        new: 'ci',  hint: 'Click on an image or button',                     domain: '' },

    //---------------------------- Scroll Page / Element ---------------------------- 
    { old: '0',  new: 'zh', hint: 'Scroll left end',        domain: '' },
    { old: 'cS', new: 'sr', hint: 'Reset scroll target',    domain: '' },
    { old: 'cs', new: 's;', hint: 'Change scroll target',   domain: '' },
    { old: 'e',  new: 'K',  hint: 'Scroll half page up',    domain: '' },
    { old: 'U',  new: '',   hint: 'Scroll full page up',    domain: '' },
    { old: 'd',  new: 'J',  hint: 'Scroll half page down',  domain: '' },
    { old: 'P',  new: '',   hint: 'Scroll full page down',  domain: '' },
    { old: 'gg', new: 'gg', hint: 'Scroll to top',          domain: '' },
    { old: 'G',  new: 'G',  hint: 'Scroll to bottom',       domain: '' },
    { old: 'j',  new: 'j',  hint: 'Scroll down',            domain: '' },
    { old: 'k',  new: 'k',  hint: 'Scroll up',              domain: '' },
    { old: 'h',  new: 'h',  hint: 'Scroll left',            domain: '' },
    { old: 'l',  new: 'l',  hint: 'Scroll right',           domain: '' },
    { old: '$',  new: 'zl', hint: 'Scroll right end',       domain: '' },
    { old: '%',  new: '%',  hint: 'Scroll percentage',      domain: '' },
    { old: ';w', new: 'u',  hint: 'Switch frames',          domain: '' },
    { old: 'w',  new: 'U',  hint: 'Focus top frame',        domain: '' },

    //---------------------------- Tabs ---------------------------- 
    { old: 'yT',      new: 'tn',             hint: 'Duplicate tab, non active',     domain: '' },
    { old: 'yt',      new: 'tt',             hint: 'duplucate tab',                 domain: '' },
    { old: 'g0',      new: 'th',             hint: 'Go to first tab',               domain: '' },
    { old: 'g$',      new: 'tl',             hint: 'Go to last tab',                domain: '' },
    { old: 'gx0',     new: 'CH',             hint: 'Close all tabs on the left',    domain: '' },
    { old: 'gxt',     new: 'ch',             hint: 'Close tab left',                domain: '' },
    { old: 'gxT',     new: 'cl',             hint: 'Close tab right',               domain: '' },
    { old: 'gx$',     new: 'CL',             hint: 'Close all tabs on the right',   domain: '' },
    { old: 'gxx',     new: 'CC',             hint: 'Close all other tabs',          domain: '' },
    { old: 'gxp',     new: 'cs',             hint: 'Close playing tab',             domain: '' },
    { old: 'E',       new: 'H',              hint: 'Go tab left',                   domain: '' },
    { old: 'R',       new: 'L',              hint: 'Go tab right',                  domain: '' },
    { old: 'T',       new: 't;',             hint: 'Choose a tab',                  domain: '' },
    { old: 'zr',      new: 'zr',             hint: 'Zoom reset',                    domain: '' },
    { old: 'zi',      new: 'zi',             hint: 'Zoom in',                       domain: '' },
    { old: 'zo',      new: 'zo',             hint: 'Zoom out',                      domain: '' },
    { old: '<Alt-p>', new: 'tp',             hint: 'Pin / unpin current tab',       domain: '' },
    { old: '<Alt-m>', new: 'ms',             hint: 'Mute / unmute current tab',     domain: '' },
    { old: 'x',       new: 'x',              hint: 'Close current tab',             domain: '' },
    { old: 'X',       new: 'X',              hint: 'Reopen closed tab',             domain: '' },
    { old: 'W',       new: 'tm',             hint: 'Move tab to another window',    domain: '' },
    { old: '<<',      new: '<Shift-Space>H', hint: 'Move tab left',                 domain: '' },
    { old: '>>',      new: '<Shift-Space>L', hint: 'Move tab right',                domain: '' },

    //---------------------------- Page Navigation ---------------------------- 
    { old: 'gp', new: 'gs', hint: 'Go to playing tab',                          domain: '' },
    { old: 'g?', new: 'R?', hint: 'Reload current tab without query string',    domain: '' },
    { old: 'g#', new: 'R#', hint: 'Reload current tab without hash fragment',   domain: '' },
    { old: 'gU', new: ';;', hint: 'Go to root URL',                             domain: '' },
    { old: 'S',  new: 'S',  hint: 'History back',                               domain: '' },
    { old: 'D',  new: 'D',  hint: 'History forward',                            domain: '' },
    { old: 'r',  new: 'r',  hint: 'Reload current tab',                         domain: '' },

    //---------------------------- Sessions ---------------------------- 
    { old: 'ZZ', new: 'ZZ', hint: 'Save session and quit',  domain: '' },
    { old: 'ZR', new: 'ZR', hint: 'Restore last session',   domain: '' },

    //---------------------------- Search Selected With ---------------------------- 
    { old: 'se', new: 'sk', hint: 'Search Wikipedia',       domain: '' },
    { old: 'ss', new: 'ss', hint: 'Search Stackoverflow',   domain: '' },
    { old: 'sh', new: 'si', hint: 'Search Github',          domain: '' },
    { old: 'sy', new: 'sy', hint: 'Search Youtube',         domain: '' },

    //---------------------------- Clipboard ---------------------------- 
    { old: 'yi', new: 'yi', hint: 'Yank input',             domain: '' },
    { old: 'yv', new: 'yt', hint: 'Yank text',              domain: '' },
    /*
    */
    { old: 'yy', new: 'yy', hint: 'Yank current URL',       domain: '' },
    { old: 'yf', new: 'yf', hint: 'Yank form JSON',         domain: '' },

    //---------------------------- Vim-like Marks ---------------------------- 
    { old: 'm',        new: 'ma', hint: 'Add URL to marks',     domain: '' },
    { old: '\'',       new: 'M',  hint: 'Jump to mark',         domain: '' },
    { old: '<Ctrl-\'', new: 'am', hint: 'Jump to mark new tab', domain: '' },

    //---------------------------- Settings ---------------------------- 
    { old: ';e', new: ';e', hint: 'Edit settings',              domain: '' },
    { old: ';v', new: ';v', hint: 'Open neovim',                domain: '' },

    //---------------------------- Chrome URLs ---------------------------- 
    { old: 'gs', new: 'gs', hint: 'View page source',       domain: '' },
    { old: ';i', new: ';i', hint: 'Open Chrome inspect',    domain: '' },
    { old: ';j', new: ';j', hint: 'Close downloads',        domain: '' },

    //---------------------------- Misc ---------------------------- 
    { old: ';s',  new: ';s',    hint: 'Toggle PDF viewer',                  domain: '' },
    { old: ';t',  new: ';t',    hint: 'Translate selected text',            domain: '' },
    { old: ';dh', new: ';dh',   hint: 'Delete history older than 30 days',  domain: '' },
    { old: ';db', new: ';xb',   hint: 'Remove current bookmark',            domain: '' }
];

maps.omnibar = [
    //---------------------------- Unused ---------------------------- 
    { old: 'Q',             new: '', hint: 'Open omnibar for translation',                      domain: '' },
    { old: 'om',            new: '', hint: 'Open URL from marks',                               domain: '' },
    { old: '<Ctrl-d>',      new: '', hint: 'Delete focused item from bookmark / history',       domain: '' },
    { old: '<Ctrl-.>',      new: '', hint: 'Show results of next page',                         domain: '' },
    { old: '<Ctrl-,>',      new: '', hint: 'Show results of previous page',                     domain: '' },
    { old: '<Ctrl-c>',      new: '', hint: 'Copy selected item URL',                            domain: '' },
    { old: '<Ctrl-D>',      new: '', hint: 'Delete all listed items from bookmark / history',   domain: '' },
    { old: '<Ctrl-r>',      new: '', hint: 'Resort history by visit count or time',             domain: '' },
    { old: '<ArrowDown>',   new: '', hint: 'Cycle through candidates',                          domain: '' },
    { old: '<ArrowUp>',     new: '', hint: 'Cycle backwards through candidates',                domain: '' },
    { old: '<Ctrl-n>',      new: '', hint: 'Cycle through candidates',                          domain: '' },
    { old: '<Ctrl-p>',      new: '', hint: 'Cycle backwards through candidates',                domain: '' },

    //---------------------------- Omnibar ---------------------------- 
    { old: 'go',            new: 'go',          hint: 'Open URL in current tab',            domain: '' },
    { old: 'ab',            new: 'ab',          hint: 'Bookmark page to folder',            domain: '' },
    { old: 'oi',            new: 'oi',          hint: 'Incognito',                          domain: '' },
    { old: 'og',            new: 'og',          hint: 'Open search g',                      domain: '' },
    { old: 'od',            new: 'od',          hint: 'Open search d',                      domain: '' },
    { old: 'ob',            new: 'ob',          hint: 'Open search b',                      domain: '' },
    { old: 'oe',            new: 'oe',          hint: 'Open search e',                      domain: '' },
    { old: 'ow',            new: 'ow',          hint: 'Open search w',                      domain: '' },
    { old: 'os',            new: 'os',          hint: 'Open search s',                      domain: '' },
    { old: 'oy',            new: 'oy',          hint: 'Open search y',                      domain: '' },
    { old: 'ox',            new: 'ox',          hint: 'Open recently closed URL',           domain: '' },
    { old: 'oh',            new: 'oh',          hint: 'Open URL from history',              domain: '' },
    { old: ':',             new: ':',           hint: 'Open commands',                      domain: '' },
    { old: 't',             new: 'ou',          hint: 'Open URL',                           domain: '' },
    { old: 'b',             new: 'b',           hint: 'Open a bookmark',                    domain: '' },
    { old: '<Ctrl-i>',      new: '<Ctrl-i>',    hint: 'Edit URL with vim then open',        domain: '' },
    { old: '<Ctrl-j>',      new: '<Ctrl-j>',    hint: 'Toggle omnibar\'s position',         domain: '' },
    { old: '<Esc>',         new: '<Esc>',       hint: 'Close omnibar',                      domain: '' },
    { old: '<Ctrl-m>',      new: '<Ctrl-m>',    hint: 'Mark selected item',                 domain: '' },
    { old: '<Tab>',         new: '<Tab>',       hint: 'Cycle through candidates',           domain: '' },
    { old: '<Shift-Tab>',   new: '<Shift-Tab>', hint: 'Cycle backwards through candidates', domain: '' },
    { old: '<Ctrl-\'>',     new: '<Ctrl-\'>',   hint: 'Toggle quotes',                      domain: '' }
];

maps.visual = [
    //---------------------------- Unused ---------------------------- 
    { old: 'V',     new: '', hint: 'Restore visual mode',           domain: '' },
    { old: ')',     new: '', hint: 'Forward sentence',              domain: '' },
    { old: '(',     new: '', hint: 'Backward sentence',             domain: '' },
    { old: '}',     new: '', hint: 'Forward paragraph',             domain: '' },
    { old: '{',     new: '', hint: 'Backward paragraph',            domain: '' },
    { old: 'G',     new: '', hint: 'Forward document boundary',     domain: '' },
    { old: 'gg',    new: '', hint: 'Backward document boundary',    domain: '' },
    { old: 'gr',    new: '', hint: 'Read selected text',            domain: '' },

    //---------------------------- Visual Mode ---------------------------- 
    { old: '/',             new: '/',               hint: 'Find',                                                   domain: '' },
    { old: 'zv',            new: 'zv',              hint: 'Enter visual mode and select entire element',            domain: '' },
    { old: '*',             new: '*',               hint: 'Find selected text',                                     domain: '' },
    { old: 'v',             new: 'v',               hint: 'Toggle visual mode',                                     domain: '' },
    { old: 'n',             new: 'n',               hint: 'Find next match',                                        domain: '' },
    { old: 'N',             new: 'N',               hint: 'Find previous match',                                    domain: '' },
    { old: '0',             new: 'H',               hint: 'Go to beginning / end of previous line',                 domain: '' },
    { old: 'l',             new: 'l',               hint: 'Cursor right',                                           domain: '' },
    { old: 'h',             new: 'h',               hint: 'Cursor left',                                            domain: '' },
    { old: 'j',             new: 'j',               hint: 'Cursor down',                                            domain: '' },
    { old: 'k',             new: 'k',               hint: 'Cursor up',                                              domain: '' },
    { old: 'w',             new: 'w',               hint: 'Go to beginning of next word',                           domain: '' },
    { old: 'e',             new: 'e',               hint: 'Go to beginning of next word',                           domain: '' },
    { old: 'b',             new: 'W',               hint: 'Go to the beginning of previous word',                   domain: '' },
    { old: '$',             new: 'L',               hint: 'Go to beginning / end of next line',                     domain: '' },
    { old: 'o',             new: 'o',               hint: 'Go to other end of selection',                           domain: '' },
    { old: '<Enter>',       new: '<Enter>',         hint: 'Click element under cursor',                             domain: '' },
    { old: '<Shift-Enter>', new: '<Shift-Enter>',   hint: 'Click element under cursor new tab',                     domain: '' },
    { old: 'zt',            new: 'zt',              hint: 'Move cursor to top of window',                           domain: '' },
    { old: 'zz',            new: 'zz',              hint: 'Move cursor to center of window',                        domain: '' },
    { old: 'zb',            new: 'zb',              hint: 'Move cursor to bottom of window',                        domain: '' },
    { old: 'f',             new: 'f',               hint: 'Jump to next <char>',                                    domain: '' },
    { old: 'F',             new: 'F',               hint: 'Jump to previous <char>',                                domain: '' },
    { old: ';',             new: '.',               hint: 'Repeat last f / F',                                      domain: '' },
    { old: ',',             new: ',',               hint: 'Repeat last f / F in opposite direction',                domain: '' },
    { old: 'p',             new: 'p',               hint: 'Expand selection to parent element',                     domain: '' },
    { old: 'V',             new: 'V',               hint: 'Select a (w)ord, (l)ine, (s)entence, or (p)aragraph',    domain: '' },
    { old: '<Ctrl-u>',      new: '<Ctrl-j>',        hint: 'Jump 20 lines up',                                       domain: '' },
    { old: '<Ctrl-d>',      new: '<Ctrl-k>',        hint: 'Jump 20 lines down',                                     domain: '' },
    { old: 't',             new: 'Q',               hint: 'Translate selected text',                                domain: '' },
    { old: 'q',             new: 'q',               hint: 'Translate selected word',                                domain: '' }
];

maps.insert = [
    //---------------------------- Unused ---------------------------- 
    { old: '<Ctrl-Alt-i>', new: '', hint: 'Open neovim for current field', domain: '' },

    //---------------------------- Insert Mode ---------------------------- 
    { old: '<Ctrl-e>',      new: '<Ctrl-j>',    hint: 'Move cursor to end of line',                 domain: '' },
    { old: '<Ctrl-f>',      new: '<Ctrl-k>',    hint: 'Move cursor to beginning of line',           domain: '' },
    { old: '<Ctrl-u>',      new: '<Ctrl-dd>',   hint: 'Delete all characters before the cursor',    domain: '' },
    { old: '<Alt-b>',       new: '<Ctrl-h>',    hint: 'Jump back a word',                           domain: '' },
    { old: '<Alt-f>',       new: '<Ctrl-l>',    hint: 'Jump forward a word',                        domain: '' },
    { old: '<Alt-w>',       new: '<Alt-h>',     hint: 'Delete previous word',                       domain: '' },
    { old: '<Alt-d>',       new: '<Alt-l>',     hint: 'Delete next word',                           domain: '' },
    { old: '<Esc>',         new: '<Esc>',       hint: 'Exit insert mode',                           domain: '' },
    { old: '<Ctrl-\'>',     new: '<Ctrl-\'>',   hint: 'Toggle quotes',                              domain: '' },
    { old: '<Ctrl-i>',      new: '<Ctrl-i>',    hint: 'Open vim for current field',                 domain: '' }
];

function mapNormal() {
    let key = maps.normal;
    for (let i = 0; i < key.length; i++) {
        if (key[i].new == '') {
            api.unmap(key[i].old);
            //console.log(i + ' empty');
            continue;
        }
        if (key[i].old == key[i].new) {
            //console.log(i + ' skip');
            continue;
        }
        //console.log(i + ' remap ' + key[i].hint);
        api.map(key[i].new, key[i].old, key[i].domain, key[i].hint);
        api.unmap(key[i].old);
    }
}

function mapOmnibar() {
    let key = maps.omnibar;
    for (let i = 0; i < key.length; i++) {
        if (key[i].new == '') {
            api.unmap(key[i].old);
            //console.log(i + ' empty');
            continue;
        }
        if (key[i].old == key[i].new) {
            //console.log(i + ' skip');
            continue;
        }
        //console.log(i + ' remap ' + key[i].hint);
        api.cmap(key[i].new, key[i].old, key[i].domain, key[i].hint);
        api.unmap(key[i].old);
    }
}
function mapVisual() {
    let key = maps.visual;
    for (let i = 0; i < key.length; i++) {
        if (key[i].new == '') {
            api.vunmap(key[i].old);
            //console.log(i + ' empty');
            continue;
        }
        if (key[i].old == key[i].new) {
            //console.log(i + ' skip');
            continue;
        }
        //console.log(i + ' remap ' + key[i].hint);
        api.vmap(key[i].new, key[i].old, key[i].domain, key[i].hint);
        api.vunmap(key[i].old);
    }
}
function mapInsert() {
    let key = maps.insert;
    for (let i = 0; i < key.length; i++) {
        if (key[i].new == '') {
            api.iunmap(key[i].old);
            //console.log(i + ' empty');
            continue;
        }
        if (key[i].old == key[i].new) {
            //console.log(i + ' skip');
            continue;
        }
        //console.log(i + ' remap ' + key[i].hint);
        api.imap(key[i].new, key[i].old, key[i].domain, key[i].hint);
        api.iunmap(key[i].old);
    }
}

mapNormal();
mapOmnibar();
mapVisual();
mapInsert();
//---------------------------- Global mappings ---------------------------- 



//---------------------------- Domain specific mappings ---------------------------- 
//

//---------------------------- Netsuite ---------------------------- 
api.mapkey('<Space>cu', 'Open CU page', function() {
    var cu = document.getElementById('companyid').value;
    window.location.replace("https://1116468.app.netsuite.com/app/common/entity/custjob.nl?id=" + cu);
}, /netsuite\.com/);

api.mapkey('<Shift-Space>CU', 'Open CU page in new tab', function() {
    var cu = document.getElementById('companyid').value;
    window.open("https://1116468.app.netsuite.com/app/common/entity/custjob.nl?id=" + cu);
}, /netsuite\.com/);

api.mapkey('<Space>e', 'Compose email', function() {
    document.getElementById('newmessage').click();
}, /netsuite\.com/);

api.mapkey('<Space>i', 'Edit form', function() {
    document.getElementById('edit').click();
}, /netsuite\.com/);

api.mapkey('<Space>nf', 'New follow up', function() {
    document.getElementById('newrecrecmachcustrecord_onboarding_name').click();
}, /netsuite\.com/);

api.mapkey('<Space>no', 'New order', function() {
    document.getElementById('salesord').click();
}, /netsuite\.com/);

api.mapkey('<Space>nn', 'New note', function() {
    document.getElementById('newhist').click();
}, /netsuite\.com/);

api.mapkey('<Space>w', 'Save form', function() {
    document.getElementById('btn_multibutton_submitter').click();
}, /netsuite\.com/);

//api.mapkey('<Space>y', 'Make copy', function() {
//    NLInvokeButton(getButton('makecopy'))
//}, /netsuite\.com/);

api.mapkey('<Space>rma', 'Fill order with case info', function() {
    let memory = document.getElementById('otherrefnum').value;
    document.getElementById('memo').value = memory + ' - 100% RMA - Ready to book';
    let field = document.getElementById('custbody_finance');
    let value = field.value;
    field.value = '100% RMA\r\n\r\n' + value;
    field = document.getElementById('custbody_logistics');
    value = field.value;
    document.getElementById('custbody_is_rma_flag_fs').click();
    field.value = '100% RMA\r\n\r\n' + value;
    document.getElementById('custbody_si_support_case_display').value = '%' + memory;
}, /netsuite\.com/);
