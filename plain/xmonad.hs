-- Imports.
import XMonad
import XMonad.Hooks.DynamicLog
import qualified XMonad.StackSet as W
import XMonad.Util.EZConfig
import XMonad.Util.Cursor

-- The main function.
main = xmonad =<< statusBar myBar myPP toggleStrutsKey myConfig

-- Command to launch the bar.
myBar = "xmobar"

-- Custom PP, configure it as you like. It determines what is being written to the bar.
myPP = xmobarPP { ppCurrent = xmobarColor "#429942" "" . wrap "<" ">" }

-- Key binding to toggle the gap for the bar.
toggleStrutsKey XConfig {XMonad.modMask = modMask} = (modMask, xK_b)

-- Main configuration, override the defaults to your liking.
myConfig = defaultConfig { 
     terminal    = "tilix"
     , startupHook = setDefaultCursor xC_left_ptr
     , workspaces = ["im", "web", "code", "shell"]
     , borderWidth = 3
     , normalBorderColor = "#cccccc"
     , focusedBorderColor = "#00ffff"
    --, modMask     = mod4Mask
} `additionalKeysP` myKeys

myKeys = [  (("M4-l"), spawn "xscreensaver-command -l")
	   , ("<XF86AudioLowerVolume>", spawn "pactl set-sink-volume 0 -10%")
	   , ("<XF86AudioRaiseVolume>", spawn "pactl set-sink-volume 0 +10%")
	   , ("<XF86AudioMute>", spawn "pactl set-sink-mute 0 toggle")
           ,(("M4-z"), kill)
	]
