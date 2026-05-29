-- main.lua
--
-- Simplified version of BulletJournalGraphs plugin
-- without external JSON configuration system.

require "BulletArrow"
require "TitleRound"
require "PatternLines1"
require "ArrowRight1"
require "CheckboxOn1"
require "CheckboxOff1"

function initUi()

    print("\nRegistering BulletJournalGraphs plugin...")

    app.registerUi({
        menu = "Add [bullet] arrow",
        callback = "BulletArrowCallback",
        accelerator = "<Control><Alt>b"
    })

    app.registerUi({
        menu = "Add [title] round box",
        callback = "TitleRoundCallback",
        accelerator = "<Control><Alt>t"
    })

    app.registerUi({
        menu = "Add [pattern] Lines 1",
        callback = "PatternLines1Callback",
        accelerator = "<Control><Alt>p"
    })
    
    app.registerUi({
        menu = "Add [arrow] right 1",
        callback = "ArrowRight1Callback",
        accelerator = "<Control><Alt>a"
    })
    
    app.registerUi({
        menu = "Add [checkbox] on 1",
        callback = "CheckboxOn1Callback",
        accelerator = "<Control><Alt>c"
    })
    
    app.registerUi({
        menu = "Add [checkbox] off 1",
        callback = "CheckboxOff1Callback"
    })

    print("BulletJournalGraphs plugin registered.\n")
end
