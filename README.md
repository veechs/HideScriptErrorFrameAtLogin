# DEPRECATED - Use [Screen Resolution Dropdown Fix](https://github.com/veechs/ScreenResolutionDropdownFix) instead
In addition to the login error, Screen Resolution Dropdown Fix also patches the Video Options dialog so it's usable with large lists of screen resolutions.

Leaving the repository up in case someone needs it for some other reason.

<br>
<br>

## Hide Script Error Frame At Login

TL;DR: Don’t bother installing this unless you’re getting a Lua error at login from Blizzard code that other error catching addons don’t handle.

### Why does this exist?

When Vanilla WoW is run in a Windows VM (like Parallels), a huge list of possible resolutions may be offered – more than Blizzard’s UI code can deal with. This causes the following Lua error to pop up at login:

![Interface\FrameXML\UIDropDownMenu.lua:156: attempt to concatenate global UIDROPDOWNMENU_OPEN_MENU' (a nil value)](https://github.com/veechs/HideScriptErrorFrameAtLogin/raw/main/LoginError.png)

Addons that catch Lua errors (BugSack, Improved Error Frame, pfUI, etc.) don’t expect an error to be thrown by Blizzard code *before* they load, so they don’t suppress it. I was tired of clicking Okay every time I logged in or reloaded my UI, so I wrote this extremely lightweight addon (it’s literally five lines of code).

All it does is check to see if the error frame is visible, and if so, it captures the message, prints it to chat, and closes the error window. Any other addon that deals with Lua errors will continue to catch them.

## Installation

#### Easy mode

Use [GitAddonsManager](https://woblight.gitlab.io/overview/gitaddonsmanager/).

#### Manual instructions

1. Download the code (green **Code** button > **Download ZIP**)
2. Extract the ZIP to **<Path\To\WoW Folder>\Interface\Addons**
3. Rename the extracted folder to `!HideScriptErrorFrameAtLogin` (in other words, remove `-master` from the end)

Once you're done, the folder structure should be **<Path\To\WoW Folder>\Interface\Addons\!HideScriptErrorFrameAtLogin\!HideScriptErrorFrameAtLogin.toc**
