local idCardNpcPoint = lib.points.new(Config.NPC.coords, 2)

function idCardNpcPoint:onEnter()
    exports['qb-core']:DrawText('[E] - identity menu','left')
end

function idCardNpcPoint:onExit()
    exports['qb-core']:HideText()
end

function idCardNpcPoint:nearby()
    if self.currentDistance < 1 and IsControlJustReleased(0, 38) then
        lib.showContext("identity_menu")
    end
end