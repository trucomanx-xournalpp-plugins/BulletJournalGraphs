require "ArrowBulletGenerated"

function ArrowBulletCallback()

    local docStructure = app.getDocumentStructure()

    local width =
        docStructure.pages[docStructure.currentPage].pageWidth

    local scale = width * 1.5 / 1000

    local x = 0.03 * width
    local y = 0.03 * width

    ArrowBulletShape(x, y, scale)

    app.refreshPage()
end
