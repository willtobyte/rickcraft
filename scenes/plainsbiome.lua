local scene = {}

local pool = {}

local statemanager = engine:statemanager()

function scene.on_enter()
  pool.player = scene:get("henrique", SceneType.object)

  pool.explosion = scene:get("explosion", SceneType.object)
  pool.explosion.placement:set(370, 140)
end

function scene.on_loop()
  pool.player.velocity.x = 0

  if statemanager:player(Player.one):on(Controller.left) then
    pool.player.reflection:set(Reflection.horizontal)
    pool.player.velocity.x = -220
  elseif statemanager:player(Player.one):on(Controller.right) then
    pool.player.reflection:unset()
    pool.player.velocity.x = 220
  end

  if pool.player.x > 300 then
    pool.explosion.action:set("default")
  end
end

function scene.on_leave()
  pool = {}
end

return scene
