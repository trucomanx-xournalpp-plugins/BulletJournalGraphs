require "BulletRibonGenerated"

function BulletRibonCallback()

    local docStructure = app.getDocumentStructure()

    local width =
        docStructure.pages[docStructure.currentPage].pageWidth

    local scale = width * 1.0 / 1000

    local x = 0.03 * width
    local y = 0.03 * width

    BulletRibonShape(x, y, scale, 1)

    app.refreshPage()
end
