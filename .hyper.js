const foregroundColor = '#eff0eb';
const backgroundColor = '#060C12';
const borderColor = '#222430';
const cursorColor = '#97979b';
const red = '#ff5c57';
const green = '#5af78e';
const yellow = '#f3f99d';
const blue = '#57c7ff';
const magenta = '#ff6ac1';
const cyan = '#9aedfe';

module.exports = {
  config: {
    // default font size in pixels for all tabs
    fontSize: 12,

    // font family with optional fallbacks
    fontFamily: '"DejaVu Sans Mono for Powerline", "Menlo", "DejaVu Sans Mono", Consolas, "Lucida Console", monospace',

    // `BEAM` for |, `UNDERLINE` for _, `BLOCK` for █
    cursorShape: 'BEAM',

    foregroundColor,
    backgroundColor,
    cursorColor,
    borderColor,

    css: '',
    termCSS: '',
    showHamburgerMenu: '',
    showWindowControls: '',
    padding: '12px 14px',

    // the full list. if you're going to provide the full color palette,
    // including the 6 x 6 color cubes and the grayscale map, just provide
    // an array here instead of a color map object
    colors: {
      black: backgroundColor,
      red,
      green,
      yellow,
      blue,
      magenta,
      cyan,
      white: '#f1f1f0',
      lightBlack: '#686868',
      lightRed: red,
      lightGreen: green,
      lightYellow: yellow,
      lightBlue: blue,
      lightMagenta: magenta,
      lightCyan: cyan,
      lightWhite: foregroundColor
    },

    shell: '/bin/zsh',
    shellArgs: ['--login'],

    env: {},

    bell: false,
    copyOnSelect: false,

    // bellSoundURL: 'http://example.com/bell.mp3',

    // for advanced config flags please refer to https://hyper.is/#cfg

    // Plugins settings
    hyperBorder: {
      // borderColors: ['#fc1da7', '#fba506'],
      // animate: true,
      borderColors: ['#AA0C3F', '#268ADF'],
      borderWidth: '5px',
    },

    keymap: {
      'Cmd+Ctrl+[': 'prev-pane',
      'Cmd+Ctrl+]': 'next-pane',
    },
  },

  plugins: [
    "hypercwd",
    "hyperlinks",
    "hyperborder",
    "hyperfull",
    "hyper-autohide-tabs",
    "hyper-keymap"
  ],

  localPlugins: [],
};
