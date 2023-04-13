local function sign(shape, material, bounds, collider)
  return {
    boundingInfo = bounds or {
      bbMax = { 0.06315990537405, 0.33248880505562, 2.8152623176575, },
      bbMin = { -0.037500008940697, -0.33248880505562, -1, },
    },
    collider = collider or {
      params = {
        halfExtents = { 0.050329957157373, 0.33248880505562, 1.9076311588287, },
      },
      transf = { 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0.9, 1, },
      type = "BOX",
    },
    lods = {
      {
        node = {
          children = {
            {
              materials = { "bh_uk_roadsigns/bh_roadsign_colours_baked.mtl", },
              mesh = "bh_uk_roadsigns/pole_lod0.msh",
              name = "pole",
              transf = { 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, },
            },
            {
              materials = { "bh_uk_roadsigns/bh_roadsign_colours_baked.mtl", },
              mesh = "bh_uk_roadsigns/" .. shape .. "_lod0.msh",
              name = shape,
              transf = { 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, },
            },
            {
              materials = { "bh_uk_roadsigns/individual_signs/bh_sign_" .. material .. ".mtl", },
              mesh = "bh_uk_roadsigns/" .. shape .. "_face_lod0.msh",
              name = shape .. "_face",
              transf = { 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, },
            },
          },
          name = "RootNode",
          transf = { 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, },
        },
        static = false,
        visibleFrom = 0,
        visibleTo = 300.10079956055,
      },
    },
    metadata = {},
    --[[metadata = {
      availability = {
        yearFrom = 0,
        yearTo = 0,
      },
      cost = {
        price = 2000,
      },
      description = {
        description = _("Used for rerouting a line. Can be added to a line like a station."),
        name = _(material),
      },
      signal = {
        type = "WAYPOINT",
      },
      streetTerminal = {
        cargo = false,
      },
      category = { categories = { "badgerrhax" } },
    },]]
    version = 1,
  }
end

local function plate(size, material, bounds, collider)
  return {
    boundingInfo = bounds or {
      bbMax = { 0.060384854674339, 0.22927279770374, 2.202751159668, },
      bbMin = { 0.037166759371758, -0.22927279770374, 1.8968620300293, },
    },
    collider = collider or {
      params = {
        halfExtents = { 0.011609047651291, 0.22927279770374, 0.15294456481934, },
      },
      transf = { 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, },
      type = "BOX",
    },
    lods = {
      {
        node = {
          children = {
            {
              materials = { "bh_uk_roadsigns/individual_plates/bh_plate_" .. material .. ".mtl", },
              mesh = "bh_uk_roadsigns/plate_" .. size .. "_face_lod0.msh",
              name = "plate_" .. size .. "_face",
              transf = { 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, },
            },
            {
              materials = { "bh_uk_roadsigns/bh_roadsign_colours_baked.mtl", },
              mesh = "bh_uk_roadsigns/plate_" .. size .. "_lod0.msh",
              name = "plate_" .. size,
              transf = { 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, },
            },
          },
          name = "RootNode",
          transf = { 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, },
        },
        static = false,
        visibleFrom = 0,
        visibleTo = 140.53067016602,
      },
    },
    metadata = {},
    version = 1,
  }
end

local function largerRoadside(size, material, bounds, collider)
  return {
    boundingInfo = bounds or {
      bbMax = { 0.06249963119626, 0.35518911480904, 2.0015983581543, },
      bbMin = { -0.037500008940697, -0.35518911480904, -1, },
    },
    collider = collider or {
      params = {
        halfExtents = { 0.049999818205833, 0.35518911480904, 1.5007991790771, },
      },
      transf = { 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, },
      type = "BOX",
    },
    lods = {
      {
        node = {
          children = {
            {
              materials = { "bh_uk_roadsigns/bh_roadsign_colours_baked.mtl", },
              mesh = "bh_uk_roadsigns/pole_short_lod0.msh",
              name = "pole_short",
              transf = { 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, },
            },
            {
              materials = { "bh_uk_roadsigns/larger_roadside/bh_rs_" .. material .. ".mtl", },
              mesh = "bh_uk_roadsigns/rect_" .. size .. "_low_face_lod0.msh",
              name = "rect_" .. size .. "_low_face",
              transf = { 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, },
            },
            {
              materials = { "bh_uk_roadsigns/bh_roadsign_colours_baked.mtl", },
              mesh = "bh_uk_roadsigns/rect_" .. size .. "_low_lod0.msh",
              name = "rect_" .. size .. "_low",
              transf = { 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, },
            },
          },
          name = "RootNode",
          transf = { 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, },
        },
        static = false,
        visibleFrom = 0,
        visibleTo = 267.96728515625,
      },
    },
    metadata = {},
    version = 1,
  }
end

local function upTriangleSign(material)
  return sign("triangle_up", material)
end

local function downTriangleSign(material)
  return sign("triangle_down", material)
end

local function octagonSign(material)
  return sign("octagon", material)
end

local function circleSign(material)
  return sign("circle", material)
end

local function squareSign(material)
  return sign("square", material)
end

local function rect71x71Sign(material)
  return sign("rect_71x71", material, {
      bbMax = { 0.06249963119626, 0.35499998927116, 2.9299998283386, },
      bbMin = { 0.038507524877787, -0.35499998927116, 2.2204041481018, },
    },
    {
      params = {
        halfExtents = { 0.011996053159237, 0.35499998927116, 0.35479784011841, },
      },
      transf = { 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, },
      type = "BOX",
    })
end

local function rect85x71Sign(material)
  return sign("rect_85x71", material, {
      bbMax = { 0.06249963119626, 0.42499998211861, 2.9299998283386, },
      bbMin = { 0.038507524877787, -0.42499998211861, 2.2204041481018, },
    },
    {
      params = {
        halfExtents = { 0.011996053159237, 0.42499998211861, 0.35479784011841, },
      },
      transf = { 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, },
      type = "BOX",
    })
end

local function plate30x17(material)
  return plate("30x17", material)
end

local function plate46x13(material)
  return plate("46x13", material)
end

local function plate46x20(material)
  return plate("46x20", material)
end

local function plate46x23(material)
  return plate("46x23", material)
end

local function plate46x26(material)
  return plate("46x26", material)
end

local function plate46x30(material)
  return plate("46x30", material)
end

local function rs71x120(material)
  return largerRoadside("71x120", material)
end

return {
  upTriangleSign = upTriangleSign,
  downTriangleSign = downTriangleSign,
  octagonSign = octagonSign,
  circleSign = circleSign,
  squareSign = squareSign,
  rect71x71Sign = rect71x71Sign,
  rect85x71Sign = rect85x71Sign,
  plate30x17 = plate30x17,
  plate46x13 = plate46x13,
  plate46x20 = plate46x20,
  plate46x23 = plate46x23,
  plate46x26 = plate46x26,
  plate46x30 = plate46x30,
  rs71x120 = rs71x120
}
