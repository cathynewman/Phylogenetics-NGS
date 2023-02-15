Acris_crepitans <- anura[anura$BINOMIAL == "Acris crepitans", ]
writeOGR(Acris_crepitans, "shapefiles", "Acris_crepitans", driver="ESRI Shapefile", overwrite_layer=TRUE)
Acris_crepitans_prj <- spTransform(Acris_crepitans, CRS("+proj=aea +lat_1=20 +lat_2=60 +lat_0=40 +lon_0=-96 +x_0=0 +y_0=0 +ellps=GRS80 +datum=NAD83 +units=m +no_defs"))
writeOGR(Acris_crepitans_prj, "shapefiles_projected", "Acris_crepitans", driver="ESRI Shapefile", overwrite_layer=TRUE)
a <- summary(Acris_crepitans_prj)
capture.output(a, file="Acris_crepitans.txt")

Acris_gryllus <- anura[anura$BINOMIAL == "Acris gryllus", ]
writeOGR(Acris_gryllus, "shapefiles", "Acris_gryllus", driver="ESRI Shapefile", overwrite_layer=TRUE)
Acris_gryllus_prj <- spTransform(Acris_gryllus, CRS("+proj=aea +lat_1=20 +lat_2=60 +lat_0=40 +lon_0=-96 +x_0=0 +y_0=0 +ellps=GRS80 +datum=NAD83 +units=m +no_defs"))
writeOGR(Acris_gryllus_prj, "shapefiles_projected", "Acris_gryllus", driver="ESRI Shapefile", overwrite_layer=TRUE)
a <- summary(Acris_gryllus_prj)
capture.output(a, file="Acris_gryllus.txt")

Anaxyrus_americanus <- anura[anura$BINOMIAL == "Anaxyrus americanus", ]
writeOGR(Anaxyrus_americanus, "shapefiles", "Anaxyrus_americanus", driver="ESRI Shapefile", overwrite_layer=TRUE)
Anaxyrus_americanus_prj <- spTransform(Anaxyrus_americanus, CRS("+proj=aea +lat_1=20 +lat_2=60 +lat_0=40 +lon_0=-96 +x_0=0 +y_0=0 +ellps=GRS80 +datum=NAD83 +units=m +no_defs"))
writeOGR(Anaxyrus_americanus_prj, "shapefiles_projected", "Anaxyrus_americanus", driver="ESRI Shapefile", overwrite_layer=TRUE)
a <- summary(Anaxyrus_americanus_prj)
capture.output(a, file="Anaxyrus_americanus.txt")

Anaxyrus_fowleri <- anura[anura$BINOMIAL == "Anaxyrus fowleri", ]
writeOGR(Anaxyrus_fowleri, "shapefiles", "Anaxyrus_fowleri", driver="ESRI Shapefile", overwrite_layer=TRUE)
Anaxyrus_fowleri_prj <- spTransform(Anaxyrus_fowleri, CRS("+proj=aea +lat_1=20 +lat_2=60 +lat_0=40 +lon_0=-96 +x_0=0 +y_0=0 +ellps=GRS80 +datum=NAD83 +units=m +no_defs"))
writeOGR(Anaxyrus_fowleri_prj, "shapefiles_projected", "Anaxyrus_fowleri", driver="ESRI Shapefile", overwrite_layer=TRUE)
a <- summary(Anaxyrus_fowleri_prj)
capture.output(a, file="Anaxyrus_fowleri.txt")

Incilius_nebulifer <- anura[anura$BINOMIAL == "Incilius nebulifer", ]
writeOGR(Incilius_nebulifer, "shapefiles", "Incilius_nebulifer", driver="ESRI Shapefile", overwrite_layer=TRUE)
Incilius_nebulifer_prj <- spTransform(Incilius_nebulifer, CRS("+proj=aea +lat_1=20 +lat_2=60 +lat_0=40 +lon_0=-96 +x_0=0 +y_0=0 +ellps=GRS80 +datum=NAD83 +units=m +no_defs"))
writeOGR(Incilius_nebulifer_prj, "shapefiles_projected", "Incilius_nebulifer", driver="ESRI Shapefile", overwrite_layer=TRUE)
a <- summary(Incilius_nebulifer_prj)
capture.output(a, file="Incilius_nebulifer.txt")

Anaxyrus_quercicus <- anura[anura$BINOMIAL == "Anaxyrus quercicus", ]
writeOGR(Anaxyrus_quercicus, "shapefiles", "Anaxyrus_quercicus", driver="ESRI Shapefile", overwrite_layer=TRUE)
Anaxyrus_quercicus_prj <- spTransform(Anaxyrus_quercicus, CRS("+proj=aea +lat_1=20 +lat_2=60 +lat_0=40 +lon_0=-96 +x_0=0 +y_0=0 +ellps=GRS80 +datum=NAD83 +units=m +no_defs"))
writeOGR(Anaxyrus_quercicus_prj, "shapefiles_projected", "Anaxyrus_quercicus", driver="ESRI Shapefile", overwrite_layer=TRUE)
a <- summary(Anaxyrus_quercicus_prj)
capture.output(a, file="Anaxyrus_quercicus.txt")

Anaxyrus_terrestris <- anura[anura$BINOMIAL == "Anaxyrus terrestris", ]
writeOGR(Anaxyrus_terrestris, "shapefiles", "Anaxyrus_terrestris", driver="ESRI Shapefile", overwrite_layer=TRUE)
Anaxyrus_terrestris_prj <- spTransform(Anaxyrus_terrestris, CRS("+proj=aea +lat_1=20 +lat_2=60 +lat_0=40 +lon_0=-96 +x_0=0 +y_0=0 +ellps=GRS80 +datum=NAD83 +units=m +no_defs"))
writeOGR(Anaxyrus_terrestris_prj, "shapefiles_projected", "Anaxyrus_terrestris", driver="ESRI Shapefile", overwrite_layer=TRUE)
a <- summary(Anaxyrus_terrestris_prj)
capture.output(a, file="Anaxyrus_terrestris.txt")

Incilius_valliceps <- anura[anura$BINOMIAL == "Incilius valliceps", ]
writeOGR(Incilius_valliceps, "shapefiles", "Incilius_valliceps", driver="ESRI Shapefile", overwrite_layer=TRUE)
Incilius_valliceps_prj <- spTransform(Incilius_valliceps, CRS("+proj=aea +lat_1=20 +lat_2=60 +lat_0=40 +lon_0=-96 +x_0=0 +y_0=0 +ellps=GRS80 +datum=NAD83 +units=m +no_defs"))
writeOGR(Incilius_valliceps_prj, "shapefiles_projected", "Incilius_valliceps", driver="ESRI Shapefile", overwrite_layer=TRUE)
a <- summary(Incilius_valliceps_prj)
capture.output(a, file="Incilius_valliceps.txt")

Anaxyrus_woodhousii <- anura[anura$BINOMIAL == "Anaxyrus woodhousii", ]
writeOGR(Anaxyrus_woodhousii, "shapefiles", "Anaxyrus_woodhousii", driver="ESRI Shapefile", overwrite_layer=TRUE)
Anaxyrus_woodhousii_prj <- spTransform(Anaxyrus_woodhousii, CRS("+proj=aea +lat_1=20 +lat_2=60 +lat_0=40 +lon_0=-96 +x_0=0 +y_0=0 +ellps=GRS80 +datum=NAD83 +units=m +no_defs"))
writeOGR(Anaxyrus_woodhousii_prj, "shapefiles_projected", "Anaxyrus_woodhousii", driver="ESRI Shapefile", overwrite_layer=TRUE)
a <- summary(Anaxyrus_woodhousii_prj)
capture.output(a, file="Anaxyrus_woodhousii.txt")

Gastrophryne_carolinensis <- anura[anura$BINOMIAL == "Gastrophryne carolinensis", ]
writeOGR(Gastrophryne_carolinensis, "shapefiles", "Gastrophryne_carolinensis", driver="ESRI Shapefile", overwrite_layer=TRUE)
Gastrophryne_carolinensis_prj <- spTransform(Gastrophryne_carolinensis, CRS("+proj=aea +lat_1=20 +lat_2=60 +lat_0=40 +lon_0=-96 +x_0=0 +y_0=0 +ellps=GRS80 +datum=NAD83 +units=m +no_defs"))
writeOGR(Gastrophryne_carolinensis_prj, "shapefiles_projected", "Gastrophryne_carolinensis", driver="ESRI Shapefile", overwrite_layer=TRUE)
a <- summary(Gastrophryne_carolinensis_prj)
capture.output(a, file="Gastrophryne_carolinensis.txt")

Hyla_chrysoscelis <- anura[anura$BINOMIAL == "Hyla chrysoscelis", ]
writeOGR(Hyla_chrysoscelis, "shapefiles", "Hyla_chrysoscelis", driver="ESRI Shapefile", overwrite_layer=TRUE)
Hyla_chrysoscelis_prj <- spTransform(Hyla_chrysoscelis, CRS("+proj=aea +lat_1=20 +lat_2=60 +lat_0=40 +lon_0=-96 +x_0=0 +y_0=0 +ellps=GRS80 +datum=NAD83 +units=m +no_defs"))
writeOGR(Hyla_chrysoscelis_prj, "shapefiles_projected", "Hyla_chrysoscelis", driver="ESRI Shapefile", overwrite_layer=TRUE)
a <- summary(Hyla_chrysoscelis_prj)
capture.output(a, file="Hyla_chrysoscelis.txt")

Hyla_cinerea <- anura[anura$BINOMIAL == "Hyla cinerea", ]
writeOGR(Hyla_cinerea, "shapefiles", "Hyla_cinerea", driver="ESRI Shapefile", overwrite_layer=TRUE)
Hyla_cinerea_prj <- spTransform(Hyla_cinerea, CRS("+proj=aea +lat_1=20 +lat_2=60 +lat_0=40 +lon_0=-96 +x_0=0 +y_0=0 +ellps=GRS80 +datum=NAD83 +units=m +no_defs"))
writeOGR(Hyla_cinerea_prj, "shapefiles_projected", "Hyla_cinerea", driver="ESRI Shapefile", overwrite_layer=TRUE)
a <- summary(Hyla_cinerea_prj)
capture.output(a, file="Hyla_cinerea.txt")

Hyla_squirella <- anura[anura$BINOMIAL == "Hyla squirella", ]
writeOGR(Hyla_squirella, "shapefiles", "Hyla_squirella", driver="ESRI Shapefile", overwrite_layer=TRUE)
Hyla_squirella_prj <- spTransform(Hyla_squirella, CRS("+proj=aea +lat_1=20 +lat_2=60 +lat_0=40 +lon_0=-96 +x_0=0 +y_0=0 +ellps=GRS80 +datum=NAD83 +units=m +no_defs"))
writeOGR(Hyla_squirella_prj, "shapefiles_projected", "Hyla_squirella", driver="ESRI Shapefile", overwrite_layer=TRUE)
a <- summary(Hyla_squirella_prj)
capture.output(a, file="Hyla_squirella.txt")

Hyla_versicolor <- anura[anura$BINOMIAL == "Hyla versicolor", ]
writeOGR(Hyla_versicolor, "shapefiles", "Hyla_versicolor", driver="ESRI Shapefile", overwrite_layer=TRUE)
Hyla_versicolor_prj <- spTransform(Hyla_versicolor, CRS("+proj=aea +lat_1=20 +lat_2=60 +lat_0=40 +lon_0=-96 +x_0=0 +y_0=0 +ellps=GRS80 +datum=NAD83 +units=m +no_defs"))
writeOGR(Hyla_versicolor_prj, "shapefiles_projected", "Hyla_versicolor", driver="ESRI Shapefile", overwrite_layer=TRUE)
a <- summary(Hyla_versicolor_prj)
capture.output(a, file="Hyla_versicolor.txt")

Pseudacris_brimleyi <- anura[anura$BINOMIAL == "Pseudacris brimleyi", ]
writeOGR(Pseudacris_brimleyi, "shapefiles", "Pseudacris_brimleyi", driver="ESRI Shapefile", overwrite_layer=TRUE)
Pseudacris_brimleyi_prj <- spTransform(Pseudacris_brimleyi, CRS("+proj=aea +lat_1=20 +lat_2=60 +lat_0=40 +lon_0=-96 +x_0=0 +y_0=0 +ellps=GRS80 +datum=NAD83 +units=m +no_defs"))
writeOGR(Pseudacris_brimleyi_prj, "shapefiles_projected", "Pseudacris_brimleyi", driver="ESRI Shapefile", overwrite_layer=TRUE)
a <- summary(Pseudacris_brimleyi_prj)
capture.output(a, file="Pseudacris_brimleyi.txt")

Pseudacris_crucifer <- anura[anura$BINOMIAL == "Pseudacris crucifer", ]
writeOGR(Pseudacris_crucifer, "shapefiles", "Pseudacris_crucifer", driver="ESRI Shapefile", overwrite_layer=TRUE)
Pseudacris_crucifer_prj <- spTransform(Pseudacris_crucifer, CRS("+proj=aea +lat_1=20 +lat_2=60 +lat_0=40 +lon_0=-96 +x_0=0 +y_0=0 +ellps=GRS80 +datum=NAD83 +units=m +no_defs"))
writeOGR(Pseudacris_crucifer_prj, "shapefiles_projected", "Pseudacris_crucifer", driver="ESRI Shapefile", overwrite_layer=TRUE)
a <- summary(Pseudacris_crucifer_prj)
capture.output(a, file="Pseudacris_crucifer.txt")

Pseudacris_feriarum <- anura[anura$BINOMIAL == "Pseudacris feriarum", ]
writeOGR(Pseudacris_feriarum, "shapefiles", "Pseudacris_feriarum", driver="ESRI Shapefile", overwrite_layer=TRUE)
Pseudacris_feriarum_prj <- spTransform(Pseudacris_feriarum, CRS("+proj=aea +lat_1=20 +lat_2=60 +lat_0=40 +lon_0=-96 +x_0=0 +y_0=0 +ellps=GRS80 +datum=NAD83 +units=m +no_defs"))
writeOGR(Pseudacris_feriarum_prj, "shapefiles_projected", "Pseudacris_feriarum", driver="ESRI Shapefile", overwrite_layer=TRUE)
a <- summary(Pseudacris_feriarum_prj)
capture.output(a, file="Pseudacris_feriarum.txt")

Pseudacris_nigrita <- anura[anura$BINOMIAL == "Pseudacris nigrita", ]
writeOGR(Pseudacris_nigrita, "shapefiles", "Pseudacris_nigrita", driver="ESRI Shapefile", overwrite_layer=TRUE)
Pseudacris_nigrita_prj <- spTransform(Pseudacris_nigrita, CRS("+proj=aea +lat_1=20 +lat_2=60 +lat_0=40 +lon_0=-96 +x_0=0 +y_0=0 +ellps=GRS80 +datum=NAD83 +units=m +no_defs"))
writeOGR(Pseudacris_nigrita_prj, "shapefiles_projected", "Pseudacris_nigrita", driver="ESRI Shapefile", overwrite_layer=TRUE)
a <- summary(Pseudacris_nigrita_prj)
capture.output(a, file="Pseudacris_nigrita.txt")

Pseudacris_ocularis <- anura[anura$BINOMIAL == "Pseudacris ocularis", ]
writeOGR(Pseudacris_ocularis, "shapefiles", "Pseudacris_ocularis", driver="ESRI Shapefile", overwrite_layer=TRUE)
Pseudacris_ocularis_prj <- spTransform(Pseudacris_ocularis, CRS("+proj=aea +lat_1=20 +lat_2=60 +lat_0=40 +lon_0=-96 +x_0=0 +y_0=0 +ellps=GRS80 +datum=NAD83 +units=m +no_defs"))
writeOGR(Pseudacris_ocularis_prj, "shapefiles_projected", "Pseudacris_ocularis", driver="ESRI Shapefile", overwrite_layer=TRUE)
a <- summary(Pseudacris_ocularis_prj)
capture.output(a, file="Pseudacris_ocularis.txt")

Pseudacris_ornata <- anura[anura$BINOMIAL == "Pseudacris ornata", ]
writeOGR(Pseudacris_ornata, "shapefiles", "Pseudacris_ornata", driver="ESRI Shapefile", overwrite_layer=TRUE)
Pseudacris_ornata_prj <- spTransform(Pseudacris_ornata, CRS("+proj=aea +lat_1=20 +lat_2=60 +lat_0=40 +lon_0=-96 +x_0=0 +y_0=0 +ellps=GRS80 +datum=NAD83 +units=m +no_defs"))
writeOGR(Pseudacris_ornata_prj, "shapefiles_projected", "Pseudacris_ornata", driver="ESRI Shapefile", overwrite_layer=TRUE)
a <- summary(Pseudacris_ornata_prj)
capture.output(a, file="Pseudacris_ornata.txt")

Pseudacris_streckeri <- anura[anura$BINOMIAL == "Pseudacris streckeri", ]
writeOGR(Pseudacris_streckeri, "shapefiles", "Pseudacris_streckeri", driver="ESRI Shapefile", overwrite_layer=TRUE)
Pseudacris_streckeri_prj <- spTransform(Pseudacris_streckeri, CRS("+proj=aea +lat_1=20 +lat_2=60 +lat_0=40 +lon_0=-96 +x_0=0 +y_0=0 +ellps=GRS80 +datum=NAD83 +units=m +no_defs"))
writeOGR(Pseudacris_streckeri_prj, "shapefiles_projected", "Pseudacris_streckeri", driver="ESRI Shapefile", overwrite_layer=TRUE)
a <- summary(Pseudacris_streckeri_prj)
capture.output(a, file="Pseudacris_streckeri.txt")

Pseudacris_triseriata <- anura[anura$BINOMIAL == "Pseudacris triseriata", ]
writeOGR(Pseudacris_triseriata, "shapefiles", "Pseudacris_triseriata", driver="ESRI Shapefile", overwrite_layer=TRUE)
Pseudacris_triseriata_prj <- spTransform(Pseudacris_triseriata, CRS("+proj=aea +lat_1=20 +lat_2=60 +lat_0=40 +lon_0=-96 +x_0=0 +y_0=0 +ellps=GRS80 +datum=NAD83 +units=m +no_defs"))
writeOGR(Pseudacris_triseriata_prj, "shapefiles_projected", "Pseudacris_triseriata", driver="ESRI Shapefile", overwrite_layer=TRUE)
a <- summary(Pseudacris_triseriata_prj)
capture.output(a, file="Pseudacris_triseriata.txt")

Lithobates_areolatus <- anura[anura$BINOMIAL == "Lithobates areolatus", ]
writeOGR(Lithobates_areolatus, "shapefiles", "Lithobates_areolatus", driver="ESRI Shapefile", overwrite_layer=TRUE)
Lithobates_areolatus_prj <- spTransform(Lithobates_areolatus, CRS("+proj=aea +lat_1=20 +lat_2=60 +lat_0=40 +lon_0=-96 +x_0=0 +y_0=0 +ellps=GRS80 +datum=NAD83 +units=m +no_defs"))
writeOGR(Lithobates_areolatus_prj, "shapefiles_projected", "Lithobates_areolatus", driver="ESRI Shapefile", overwrite_layer=TRUE)
a <- summary(Lithobates_areolatus_prj)
capture.output(a, file="Lithobates_areolatus.txt")

Lithobates_catesbeianus <- anura[anura$BINOMIAL == "Lithobates catesbeianus", ]
writeOGR(Lithobates_catesbeianus, "shapefiles", "Lithobates_catesbeianus", driver="ESRI Shapefile", overwrite_layer=TRUE)
Lithobates_catesbeianus_prj <- spTransform(Lithobates_catesbeianus, CRS("+proj=aea +lat_1=20 +lat_2=60 +lat_0=40 +lon_0=-96 +x_0=0 +y_0=0 +ellps=GRS80 +datum=NAD83 +units=m +no_defs"))
writeOGR(Lithobates_catesbeianus_prj, "shapefiles_projected", "Lithobates_catesbeianus", driver="ESRI Shapefile", overwrite_layer=TRUE)
a <- summary(Lithobates_catesbeianus_prj)
capture.output(a, file="Lithobates_catesbeianus.txt")

Lithobates_clamitans <- anura[anura$BINOMIAL == "Lithobates clamitans", ]
writeOGR(Lithobates_clamitans, "shapefiles", "Lithobates_clamitans", driver="ESRI Shapefile", overwrite_layer=TRUE)
Lithobates_clamitans_prj <- spTransform(Lithobates_clamitans, CRS("+proj=aea +lat_1=20 +lat_2=60 +lat_0=40 +lon_0=-96 +x_0=0 +y_0=0 +ellps=GRS80 +datum=NAD83 +units=m +no_defs"))
writeOGR(Lithobates_clamitans_prj, "shapefiles_projected", "Lithobates_clamitans", driver="ESRI Shapefile", overwrite_layer=TRUE)
a <- summary(Lithobates_clamitans_prj)
capture.output(a, file="Lithobates_clamitans.txt")

Lithobates_grylio <- anura[anura$BINOMIAL == "Lithobates grylio", ]
writeOGR(Lithobates_grylio, "shapefiles", "Lithobates_grylio", driver="ESRI Shapefile", overwrite_layer=TRUE)
Lithobates_grylio_prj <- spTransform(Lithobates_grylio, CRS("+proj=aea +lat_1=20 +lat_2=60 +lat_0=40 +lon_0=-96 +x_0=0 +y_0=0 +ellps=GRS80 +datum=NAD83 +units=m +no_defs"))
writeOGR(Lithobates_grylio_prj, "shapefiles_projected", "Lithobates_grylio", driver="ESRI Shapefile", overwrite_layer=TRUE)
a <- summary(Lithobates_grylio_prj)
capture.output(a, file="Lithobates_grylio.txt")

Lithobates_heckscheri <- anura[anura$BINOMIAL == "Lithobates heckscheri", ]
writeOGR(Lithobates_heckscheri, "shapefiles", "Lithobates_heckscheri", driver="ESRI Shapefile", overwrite_layer=TRUE)
Lithobates_heckscheri_prj <- spTransform(Lithobates_heckscheri, CRS("+proj=aea +lat_1=20 +lat_2=60 +lat_0=40 +lon_0=-96 +x_0=0 +y_0=0 +ellps=GRS80 +datum=NAD83 +units=m +no_defs"))
writeOGR(Lithobates_heckscheri_prj, "shapefiles_projected", "Lithobates_heckscheri", driver="ESRI Shapefile", overwrite_layer=TRUE)
a <- summary(Lithobates_heckscheri_prj)
capture.output(a, file="Lithobates_heckscheri.txt")

Lithobates_okaloosae <- anura[anura$BINOMIAL == "Lithobates okaloosae", ]
writeOGR(Lithobates_okaloosae, "shapefiles", "Lithobates_okaloosae", driver="ESRI Shapefile", overwrite_layer=TRUE)
Lithobates_okaloosae_prj <- spTransform(Lithobates_okaloosae, CRS("+proj=aea +lat_1=20 +lat_2=60 +lat_0=40 +lon_0=-96 +x_0=0 +y_0=0 +ellps=GRS80 +datum=NAD83 +units=m +no_defs"))
writeOGR(Lithobates_okaloosae_prj, "shapefiles_projected", "Lithobates_okaloosae", driver="ESRI Shapefile", overwrite_layer=TRUE)
a <- summary(Lithobates_okaloosae_prj)
capture.output(a, file="Lithobates_okaloosae.txt")

Lithobates_palustris <- anura[anura$BINOMIAL == "Lithobates palustris", ]
writeOGR(Lithobates_palustris, "shapefiles", "Lithobates_palustris", driver="ESRI Shapefile", overwrite_layer=TRUE)
Lithobates_palustris_prj <- spTransform(Lithobates_palustris, CRS("+proj=aea +lat_1=20 +lat_2=60 +lat_0=40 +lon_0=-96 +x_0=0 +y_0=0 +ellps=GRS80 +datum=NAD83 +units=m +no_defs"))
writeOGR(Lithobates_palustris_prj, "shapefiles_projected", "Lithobates_palustris", driver="ESRI Shapefile", overwrite_layer=TRUE)
a <- summary(Lithobates_palustris_prj)
capture.output(a, file="Lithobates_palustris.txt")

Lithobates_sevosus <- anura[anura$BINOMIAL == "Lithobates sevosus", ]
writeOGR(Lithobates_sevosus, "shapefiles", "Lithobates_sevosus", driver="ESRI Shapefile", overwrite_layer=TRUE)
Lithobates_sevosus_prj <- spTransform(Lithobates_sevosus, CRS("+proj=aea +lat_1=20 +lat_2=60 +lat_0=40 +lon_0=-96 +x_0=0 +y_0=0 +ellps=GRS80 +datum=NAD83 +units=m +no_defs"))
writeOGR(Lithobates_sevosus_prj, "shapefiles_projected", "Lithobates_sevosus", driver="ESRI Shapefile", overwrite_layer=TRUE)
a <- summary(Lithobates_sevosus_prj)
capture.output(a, file="Lithobates_sevosus.txt")

Lithobates_sphenocephalus <- anura[anura$BINOMIAL == "Lithobates sphenocephalus", ]
writeOGR(Lithobates_sphenocephalus, "shapefiles", "Lithobates_sphenocephalus", driver="ESRI Shapefile", overwrite_layer=TRUE)
Lithobates_sphenocephalus_prj <- spTransform(Lithobates_sphenocephalus, CRS("+proj=aea +lat_1=20 +lat_2=60 +lat_0=40 +lon_0=-96 +x_0=0 +y_0=0 +ellps=GRS80 +datum=NAD83 +units=m +no_defs"))
writeOGR(Lithobates_sphenocephalus_prj, "shapefiles_projected", "Lithobates_sphenocephalus", driver="ESRI Shapefile", overwrite_layer=TRUE)
a <- summary(Lithobates_sphenocephalus_prj)
capture.output(a, file="Lithobates_sphenocephalus.txt")

Lithobates_virgatipes <- anura[anura$BINOMIAL == "Lithobates virgatipes", ]
writeOGR(Lithobates_virgatipes, "shapefiles", "Lithobates_virgatipes", driver="ESRI Shapefile", overwrite_layer=TRUE)
Lithobates_virgatipes_prj <- spTransform(Lithobates_virgatipes, CRS("+proj=aea +lat_1=20 +lat_2=60 +lat_0=40 +lon_0=-96 +x_0=0 +y_0=0 +ellps=GRS80 +datum=NAD83 +units=m +no_defs"))
writeOGR(Lithobates_virgatipes_prj, "shapefiles_projected", "Lithobates_virgatipes", driver="ESRI Shapefile", overwrite_layer=TRUE)
a <- summary(Lithobates_virgatipes_prj)
capture.output(a, file="Lithobates_virgatipes.txt")

Scaphiopus_holbrookii <- anura[anura$BINOMIAL == "Scaphiopus holbrookii", ]
writeOGR(Scaphiopus_holbrookii, "shapefiles", "Scaphiopus_holbrookii", driver="ESRI Shapefile", overwrite_layer=TRUE)
Scaphiopus_holbrookii_prj <- spTransform(Scaphiopus_holbrookii, CRS("+proj=aea +lat_1=20 +lat_2=60 +lat_0=40 +lon_0=-96 +x_0=0 +y_0=0 +ellps=GRS80 +datum=NAD83 +units=m +no_defs"))
writeOGR(Scaphiopus_holbrookii_prj, "shapefiles_projected", "Scaphiopus_holbrookii", driver="ESRI Shapefile", overwrite_layer=TRUE)
a <- summary(Scaphiopus_holbrookii_prj)
capture.output(a, file="Scaphiopus_holbrookii.txt")

Scaphiopus_hurterii <- anura[anura$BINOMIAL == "Scaphiopus hurterii", ]
writeOGR(Scaphiopus_hurterii, "shapefiles", "Scaphiopus_hurterii", driver="ESRI Shapefile", overwrite_layer=TRUE)
Scaphiopus_hurterii_prj <- spTransform(Scaphiopus_hurterii, CRS("+proj=aea +lat_1=20 +lat_2=60 +lat_0=40 +lon_0=-96 +x_0=0 +y_0=0 +ellps=GRS80 +datum=NAD83 +units=m +no_defs"))
writeOGR(Scaphiopus_hurterii_prj, "shapefiles_projected", "Scaphiopus_hurterii", driver="ESRI Shapefile", overwrite_layer=TRUE)
a <- summary(Scaphiopus_hurterii_prj)
capture.output(a, file="Scaphiopus_hurterii.txt")
