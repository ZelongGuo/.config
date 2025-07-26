//------------------------------------------------------------------------------------- 
// see https://github.com/SophiCeleste/SKSettings/blob/main/config.js 
//     https://github.com/Marin-Kitagawa/surfingkeys_config/blob/main/settings.js
//     https://gist.github.com/catbaron0/dd2f9b0ef1b9e5033836c945508356f0       (from Shaoshupai)
//
// ------------ VIM-like operation ------------
// backward, forward 
// open new tab, new tab with google, baidu etc. 
// open some bookmared webs, like gemini, chatgpt, grok, deepseek and so on ...
// tab movement
// copy current link, copy some text ... 
// 

// ------------ TODOs ------------
// Note: Surfingkeys is doing its best to make full use of keyboard for web browsing, but there are some limitations from Google Chrome itself, please see Brook Build of Chromium for a more thorough experience. Maybe in the futhre we can turn to Chromium ..

//------------------------------------------------------------------------------------- 

// an example to create a new mapping `ctrl-y`
mapkey('<Ctrl-y>', 'Show me the money', function() {
    Front.showPopup('a well-known phrase uttered by characters in the 1996 film Jerry Maguire (Escape to close).');
});

map('h', 'i');
map('i', 'k');
// unmap('k');
map('k', 'j');



// an example to replace `T` with `gt`, click `Default mappings` to see how `T` works.
map('gt', 'T');

// an example to remove mapkey `Ctrl-i`
unmap('<Ctrl-i>');

// map to vimum
map('u', 'e');
mapkey('p', "Open the clipboard's URL in the current tab", function() {
    Front.getContentFromClipboard(function(response) {
        window.location.href = response.data;
    });
});
map('P', 'cc');
map('gi', 'i');
map('F', 'gf');
map('gf', 'w');
map('`', '\'');
// save default key `t` to temp key `>_t`
map('>_t', 't');
// create a new key `t` for default key `on`
map('t', 'on');
// create a new key `o` for saved temp key `>_t`
map('o', '>_t');
map('H', 'S');
map('L', 'D');
map('gt', 'R');
map('gT', 'E');
map('K', 'R');
map('J', 'E');

settings.tabsThreshold = 3;         // Show tab num when greater 3 tabs 
settings.omnibarPosition = "top";
settings.hintAlign = "left";
mapkey('<Space>', 'Choose a tab with omnibar', function() {
    Front.openOmnibar({type: "Tabs"});
});


//------------ Theme config ---------------- 
settings.theme = `
.sk_theme {
    background: #282a36; // main background color
    color: #f8f8f2;      // text background color
}

.sk_theme input {
    font-family: "Fira Code";
    color: #ffb86c;
}

#sk_omnibarSearchResult li div.url {
    font-weight: normal;
}

// #sk_omnibarSearchArea input {
//     font-size: 10px;
// }

body {
    font-family: "Fira Code", Consolas, "Liberation Mono", Menlo, Courier, monospace;
    // font-size: 10px;
}

kbd {
    font: 11px "Fira Code", Consolas, "Liberation Mono", Menlo, Courier, monospace;
}

// #sk_omnibarSearchArea .prompt, #sk_omnibarSearchArea .resultPage {
//     font-size: 10px;
// }

.sk_theme tbody {
    color: #ff5555;
}

.sk_theme .url {
    // font-size: 8px;
    color: #6272a4;
}
#sk_omnibarSearchResult>ul>li {
    background: #282a36;
}
#sk_omnibarSearchResult ul li:nth-child(odd) {
    background: #282a36;
}
.sk_theme #sk_omnibarSearchResult ul li:nth-child(odd) {
    background: #282a36;
}
.sk_theme .annotation {
    color: #6272a4;
}
.sk_theme .focused {
    background: #44475a !important;
}
.sk_theme kbd {
    background: #f8f8f2;
    color: #44475a;
}
.sk_theme .frame {
    background: #8178DE9E;
}
.sk_theme .omnibar_highlight {
    color: #8be9fd;
}
.sk_theme .omnibar_folder {
    color: #ff79c6;
}
.sk_theme .omnibar_timestamp {
    // font-size: 9px;
    font-weight: bold;
    color: #bd93f9;
}
.sk_theme .omnibar_visitcount {
    // font-size: 9px;
    font-weight: bold;
    color: #f1fa8c;
}
.sk_theme .prompt, .sk_theme .resultPage {
    color: #50fa7b;
}
.sk_theme .feature_name {
    color: #ff5555;
}
.sk_omnibar_middle #sk_omnibarSearchArea {
    border-bottom: 1px solid #282a36;
}
#sk_status {
    border: 1px solid #282a36;
}
#sk_richKeystroke {
    background: #282a36;
    box-shadow: 0px 2px 10px rgba(40, 42, 54, 0.8);
}
#sk_richKeystroke kbd>.candidates {
    color: #ff5555;
}
#sk_keystroke {
    background-color: #282a36;
    color: #f8f8f2;
}
kbd {
    border: solid 1px #f8f8f2;
    border-bottom-color: #f8f8f2;
    box-shadow: inset 0 -1px 0 #f8f8f2;
}
#sk_frame {
    border: 4px solid #ff5555;
    background: #8178DE9E;
    box-shadow: 0px 0px 10px #DA3C0DCC;
}
#sk_banner {
    border: 1px solid #282a36;
    background: rgb(68, 71, 90);
}
div.sk_tabs_bg {
    background: #f8f8f2;
}
div.sk_tab {
    background: -webkit-gradient(linear, left top, left bottom, color-stop(0%,#6272a4), color-stop(100%,#44475a));
}
div.sk_tab_title {
    color: #f8f8f2;
}
div.sk_tab_url {
    color: #8be9fd;
}
div.sk_tab_hint {
    background: -webkit-gradient(linear, left top, left bottom, color-stop(0%,#f1fa8c), color-stop(100%,#ffb86c));
    color: #282a36;
    border: solid 1px #282a36;
}
#sk_bubble {
    border: 1px solid #f8f8f2;
    color: #282a36;
    background-color: #f8f8f2;
}
#sk_bubble * {
    color: #282a36 !important;
}
div.sk_arrow[dir=down]>div:nth-of-type(1) {
    border-top: 12px solid #f8f8f2;
}
div.sk_arrow[dir=up]>div:nth-of-type(1) {
    border-bottom: 12px solid #f8f8f2;
}
div.sk_arrow[dir=down]>div:nth-of-type(2) {
    border-top: 10px solid #f8f8f2;
}
div.sk_arrow[dir=up]>div:nth-of-type(2) {
    border-bottom: 10px solid #f8f8f2;
}
#sk_omnibar {
    width: 60%;
    left: 20%;
}
}`;
