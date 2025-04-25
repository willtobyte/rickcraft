_G.engine = EngineFactory.new()
    :with_title("Reprobate")
    :with_width(1920)
    :with_height(1080)
    :with_scale(4.0)
    :with_fullscreen(true)
    :create()

local scenemanager = engine:scenemanager()

function setup()
  math.randomseed(os.time())

  scenemanager:register("plainsbiome")

  scenemanager:set("plainsbiome")
end

function loop()
end

function run()
  engine:run()
end
