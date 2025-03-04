# limpio la memoria
rm(list = ls()) # remove all objects
gc() # garbage collection

require("data.table")
require("rpart")
require("rpart.plot")

setwd("C:\\Users\\matia\\OneDrive\\Desktop\\ITBA\\CD03-Mineria_de_Datos") # establezco la carpeta donde voy a trabajar

# cargo el dataset
dataset <- fread("./datasets/dataset_pequeno.csv")

dir.create("./exp/", showWarnings = FALSE)
dir.create("./exp/EA4810/", showWarnings = FALSE)
setwd("./exp/EA4810")

# uso esta semilla para los canaritos
set.seed(400067)

# agrego 30 variables canarito,
#  random distribucion uniforme en el intervalo [0,1]
for (i in 1:0) dataset[, paste0("canarito", i) := runif(nrow(dataset))]


# Primero  veo como quedan mis arboles
modelo <- rpart(
    formula = "clase_ternaria ~ .",
    data = dataset[foto_mes == 202107, ],
    model = TRUE,
    xval = 0,
    cp = -1,
    minsplit = 800,
    minbucket = 2,
    maxdepth = 8
)


# Grabo el arbol de canaritos
pdf(file = "./arbol_canaritos_0.pdf", width = 28, height = 4)
prp(modelo,
    extra = 101, digits = -5,
    branch = 1, type = 4, varlen = 0, faclen = 0
)

dev.off()

