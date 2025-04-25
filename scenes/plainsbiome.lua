local scene = {}

local pool = {}

function scene.on_enter()
end

function scene.on_loop()

end

function scene.on_leave()
  pool = {}
end

return scene