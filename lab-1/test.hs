square :: Float -> Float
square x = x * x

cube :: Float -> Float
cube  x = x * x * x

volume :: Float -> Float
volume r = (4.0 * pi * cube r)/3.0

surfaceArea :: Float -> Float
surfaceArea  r = 4.0 * pi * square r