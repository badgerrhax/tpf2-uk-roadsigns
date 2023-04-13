local function standardMaterial(albedo)
  return {
    order = 0,
    params = {
      albedo_scale = {
        albedoScale = { 1, 1, 1, },
      },
      fade_out_range = {
        fadeOutEndDist = 20000,
        fadeOutStartDist = 10000,
      },
      map_albedo = {
        fileName = albedo,
        type = "TWOD",
        wrapS = "REPEAT",
        wrapT = "REPEAT",
      },
      map_metal_gloss_ao = {
        fileName = "default_metal_gloss_ao.tga",
        scaleDownAllowed = false,
        type = "TWOD",
      },
      polygon_offset = {
        factor = 0,
        forceDepthWrite = false,
        units = 0,
      },
      two_sided = {
        flipNormal = true,
        twoSided = false,
      },
    },
    type = "PHYSICAL",
  }
end

local function individualSignMaterial(sign)
  return standardMaterial("model/bh_uk_roadsigns/individual_signs/bh_" .. sign .. "128_albedo.dds")
end

local function individualPlateMaterial(plate)
  return standardMaterial("model/bh_uk_roadsigns/individual_plates/bh_" .. plate .. "_albedo.dds")
end

local function individualLgRoadsideMaterial(sign)
  return standardMaterial("model/bh_uk_roadsigns/larger_roadside_signs/bh_" .. sign .. "_albedo.dds")
end

return {
  individualSignMaterial = individualSignMaterial,
  individualPlateMaterial = individualPlateMaterial,
  individualLgRoadsideMaterial = individualLgRoadsideMaterial
}
