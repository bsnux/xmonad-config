import XMonad
import XMonad.Config.Xfce
import XMonad.Util.EZConfig

main = do
  xmonad $ xfceConfig
              { modMask = mod4Mask
              , borderWidth = 4
              , focusedBorderColor = "#7FBC71"
              , terminal = "urxvt"
              } `additionalKeysP` myKeys

myKeys = [  (("M4-f"), spawn "firefox")
           ,(("M4-e"), spawn "emacs")
           ,(("M4-i"), spawn "empathy")
           ,(("M4-s"), spawn "xscreensaver-command --lock")
           ,(("M4-z"), kill)
         ]
