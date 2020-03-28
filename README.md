# MtgWiki

This repository contains the code for the [comprehensive rules module](https://mtg.gamepedia.com/Module:CR) used on the [Magic the Gathering wiki](https://mtg.gamepedia.com/Main_Page) plus enough of a faked [MediaWiki](https://www.mediawiki.org/wiki/MediaWiki) environment to enable it to be run and debugged locally.

It is meant to be used with [Visual Studio Code](https://code.visualstudio.com/).

The CR module source can be found in the **src/wiki folder.**

## Setup

1. Install [Visual Studio Code](https://code.visualstudio.com/) (vsc)

2. Install [luacheck](https://github.com/mpeterv/luacheck). On Windows this is a simple as downloading the **luacheck.exe** file from [here](https://github.com/mpeterv/luacheck/releases/tag/0.23.0) and placing it in a folder that is in your PATH.

3. In vsc install the [**vscode-lua**](https://marketplace.visualstudio.com/items?itemName=trixnz.vscode-lua) extension for Lua language support and automatic use of luacheck to lint Lua code.

4. In vsc install the [Lua Debug](https://marketplace.visualstudio.com/items?itemName=actboy168.lua-debug) extensions to enable Lua debugging.

5. _(Optional)_ Install Lua. You should only need this if you want to run Lua code from the command line.

## Debugging

Have a look at the **src\run_*.lua** files, they show how to call the CR module locally.

There are debug configurations set up for each of these. Go to the run window and select the one you want and click on the _Start Debugging_ button.


## License
Licensed under [CC BY-NC-SA 2.5](https://creativecommons.org/licenses/by-nc-sa/2.5/). For a list of contributers see the [history](https://mtg.gamepedia.com/index.php?title=Module:CR&action=history) on the MTG wiki.
