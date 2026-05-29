require "CheckboxOff1Generated"

function CheckboxOff1Callback()

    local docStructure = app.getDocumentStructure()

    local width =
        docStructure.pages[docStructure.currentPage].pageWidth

    local scale = width * 0.3 / 1000

    local x = 0.03 * width
    local y = 0.03 * width

    CheckboxOff1Shape(x, y, scale,1)

    app.refreshPage()
end
