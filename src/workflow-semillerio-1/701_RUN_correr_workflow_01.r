# Corrida general del workflow

options(error = function() {
  traceback(20)
  options(error = NULL)
  stop("exiting after script error")
})


# corrida de cada paso del workflow

# primeros pasos, relativamente rapidos
source("~/dm2023b/src/workflow-semillerio-1/711_CA_reparar_dataset_01.r")
source("~/dm2023b/src/workflow-semillerio-1/721_DR_corregir_drifting_01.r")
source("~/dm2023b/src/workflow-semillerio-1/731_FE_historia_01.r")
source("~/dm2023b/src/workflow-semillerio-1/741_TS_training_strategy_01.r")

# ultimos pasos, muy lentos
source("~/dm2023b/src/workflow-semillerio-1/751_HT_lightgbm_01.r")
source("~/dm2023b/src/workflow-semillerio-1/761_ZZ_final_01.r")
source("~/dm2023b/src/workflow-semillerio-1/795_ZZ_final_semillerio_1.r")
source("~/dm2023b/src/workflow-semillerio-1/796_HB_semillerios_hibridacion_1.r")

