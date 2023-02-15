louisiana <- enmtools.species()
louisiana$species.name <- "louisiana"
louisiana$presence.points <- read.csv("input_Maxent_newest_regions_louisiana.csv")[,2:3]
louisiana$range <- background.raster.buffer(louisiana$presence.points, 50000, mask = env)
louisiana$background.points <- background.points.buffer(points = louisiana$presence.points, radius = 20000, n = 1000, mask = env[[1]])
ozark <- enmtools.species()
ozark$species.name <- "ozark"
ozark$presence.points <- read.csv("input_Maxent_newest_regions_ozark.csv")[,2:3]
ozark$range <- background.raster.buffer(ozark$presence.points, 50000, mask = env)
ozark$background.points <- background.points.buffer(points = ozark$presence.points, radius = 20000, n = 1000, mask = env[[1]])
ouachita <- enmtools.species()
ouachita$species.name <- "ouachita"
ouachita$presence.points <- read.csv("input_Maxent_newest_regions_ouachita.csv")[,2:3]
ouachita$range <- background.raster.buffer(ouachita$presence.points, 50000, mask = env)
ouachita$background.points <- background.points.buffer(points = ouachita$presence.points, radius = 20000, n = 1000, mask = env[[1]])
