require "PatternLines1Generated"

function PatternLines1Callback()

    local docStructure = app.getDocumentStructure()

    local width =
        docStructure.pages[docStructure.currentPage].pageWidth

    local scale = width * 1 / 1000

    local x = 0.03 * width
    local y = 0.03 * width

    PatternLines1Shape(x, y, scale,3)

    app.refreshPage()
end
