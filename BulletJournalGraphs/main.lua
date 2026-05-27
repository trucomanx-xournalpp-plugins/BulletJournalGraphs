-- main.lua
--
-- Simplified version of BulletJournalGraphs plugin
-- without external JSON configuration system.

require "ArrowBullet"
require "TitleRound"

function initUi()

    print("\nRegistering BulletJournalGraphs plugin...")

    app.registerUi({
        menu = "Add arrow bullet",
        callback = "ArrowBulletCallback",
        accelerator = "<Control><Alt>a"
    })

    app.registerUi({
        menu = "Add round box title",
        callback = "TitleRoundCallback",
        accelerator = "<Control><Alt>r"
    })

    print("BulletJournalGraphs plugin registered.\n")
end
