require "ArrowRight1Generated"

function ArrowRight1Callback()

    local docStructure = app.getDocumentStructure()

    local width =
        docStructure.pages[docStructure.currentPage].pageWidth

    local scale = width * 0.5 / 1000

    local x = 0.03 * width
    local y = 0.03 * width

    ArrowRight1Shape(x, y, scale,1)

    app.refreshPage()
end
