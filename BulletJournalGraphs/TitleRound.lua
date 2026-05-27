require "TitleRoundGenerated"

function TitleRoundCallback()

    local docStructure = app.getDocumentStructure()

    local width =
        docStructure.pages[docStructure.currentPage].pageWidth

    local scale = width / 1000

    local x = 0.03 * width
    local y = 0.03 * width

    DrawGeneratedShape(x, y, scale)

    app.refreshPage()
end
