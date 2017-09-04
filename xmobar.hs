Config {
       font = "xft:Hack:size=14:bold:antialias=true"
       , bgColor = "#282c34"
       , fgColor = "#bbc2cf"
       , position = TopW L 96
       , commands = [ Run Cpu ["-t", "<fc=#a9a1e1><icon=/home/malcolm/.xmonad/icons/cpu.xbm/></fc> <total>%", "-L","3","-H","50","-l","#bbc2cf","-n","#bbc2cf","-h","#fb4934"] 50
                    , Run Memory ["-t","<fc=#51afef><icon=/home/malcolm/.xmonad/icons/mem.xbm/></fc> <usedratio>%","-H","80","-L","10","-l","#bbc2cf","-n","#bbc2cf","-h","#fb4934"] 50
                    , Run Date "%a %b %_d %k:%M" "date" 300
                    , Run DynNetwork ["-t","<fc=#4db5bd><icon=/home/malcolm/.xmonad/icons/arrow_down.xbm/></fc> <rx>, <fc=#c678dd><icon=/home/malcolm/.xmonad/icons/arrow_up.xbm/></fc> <tx>","-H","200","-L","10","-h","#bbc2cf","-l","#bbc2cf","-n","#bbc2cf"] 50
                    , Run CoreTemp ["-t", "<fc=#CDB464><icon=/home/malcolm/.xmonad/icons/temp.xbm/></fc> <core0>°", "-L", "30", "-H", "75", "-l", "lightblue", "-n", "#bbc2cf", "-h", "#aa4450"] 50
                    , Run Com "network-check.sh" [] "netcheck" 50
                    -- battery monitor
                    , Run BatteryP       [ "BAT0" ] 
                                         [ "--template" , "<fc=#B1DE76><icon=/home/malcolm/.xmonad/icons/battery.xbm/></fc> <acstatus>"
                                         , "--Low"      , "10"        -- units: %
                                         , "--High"     , "80"        -- units: %
                                         , "--low"      , "#fb4934" -- #ff5555
                                         , "--normal"   , "#bbc2cf"
                                         , "--high"     , "#98be65"

                                         , "--" -- battery specific options
                                                   -- discharging status
                                                   , "-o"   , "<left>% (<timeleft>)"
                                                   -- AC "on" status
                                                   , "-O"   , "<left>% (<fc=#98be65>Charging</fc>)" -- 50fa7b
                                                   -- charged status
                                                   , "-i"   , "<fc=#98be65>Charged</fc>"
                                         ] 50
                    , Run StdinReader
                    ]
       , sepChar = "%"
       , alignSep = "}{"
       , template = "%StdinReader% }{ %cpu% | %coretemp% | %memory% | %battery% | %dynnetwork% | <fc=#ECBE7B>%date%</fc>  "   -- #69DFFA
       }
