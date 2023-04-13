local function signConstruction(name, desc, icon, shape, signs)
  local function configKey(key)
    return "bh_individual_" .. shape .. "_signs_" .. key
  end

  local function mdl(sign)
    return "bh_uk_roadsigns/individual_signs/" .. shape .. "/bh_" .. sign .. ".mdl"
  end

  local plates = {
    "none",
    "childcycletests",
    "childcycletraining",
    "cycleevent",
    "cyclescrossing",
    "exceptbuses",
    "exceptbusesandcycles",
    "exceptcycles",
    "exceptlocalbuses",
    "giveway50",
    "only",
    "parttime",
    "stop100"
  }

  local function plateMdl(plateName)
    if plateName == plates[1] then return nil end
    return "bh_uk_roadsigns/individual_plates/bh_" .. plateName .. ".mdl"
  end

  local function signIcons(signs)
    local icons = {}
    for i, v in ipairs(signs) do
      icons[#icons + 1] = "ui/parameters/bh_uk_roadsigns/individual_signs/bh_" .. v .. "128@2x.tga"
    end
    return icons
  end

  local function plateIcons(plates)
    local icons = {}
    for i, v in ipairs(plates) do
      icons[#icons + 1] = "ui/parameters/bh_uk_roadsigns/individual_plates/bh_" .. v .. "@2x.tga"
    end
    return icons
  end

  return {
    type = "ASSET_DEFAULT",
    description = {
      name = name,
      description = desc,
      icon = icon
    },
    availability = {},
    buildMode = "SINGLE",
    categories = { "badgerrhax" },
    order = 14,
    skipCollision = true,
    autoRemovable = false,
    params = {
      {
        key = configKey("sign"),
        name = _("Sign"),
        uiType = "ICON_BUTTON",
        values = signIcons(signs),
      },

      {
        key = configKey("plate"),
        name = _("Plate"),
        uiType = "ICON_BUTTON",
        values = plateIcons(plates),
      },
    },
    updateFn = function(params)
      local result = {}
      local sign = mdl(signs[params[configKey("sign")] + 1])
      local plate = plateMdl(plates[params[configKey("plate")] + 1])
      local identity = { 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1 }

      result.models = { { id = sign, transf = identity } }

      if plate ~= nil then
        result.models[#result.models + 1] = { id = plate, transf = identity }
        result.personCapacity = { type = "RESIDENTIAL", capacity = 1, }
      end

      result.terrainAlignmentLists = { { type = "EQUAL", faces = {} } }
      result.groundFaces = {}

      return result
    end
  }
end

return {
  signConstruction = signConstruction
}
