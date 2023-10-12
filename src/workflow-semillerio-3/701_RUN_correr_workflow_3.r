# Corrida general del workflow

options(error = function() {
  traceback(20)
  options(error = NULL)
  stop("exiting after script error")
})


# corrida de cada paso del workflow

# primeros pasos, relativamente rapidos
source("~/dm2023b/src/workflow-semillerio-3/711_CA_reparar_dataset_3.r")
source("~/dm2023b/src/workflow-semillerio-3/721_DR_corregir_drifting_3.r")
source("~/dm2023b/src/workflow-semillerio-3/731_FE_historia_3.r")
source("~/dm2023b/src/workflow-semillerio-3/741_TS_training_strategy_3.r")

# ultimos pasos, muy lentos
source("~/dm2023b/src/workflow-semillerio-3/751_HT_lightgbm_3.r")
source("~/dm2023b/src/workflow-semillerio-3/795_ZZ_final_semillerio_3.r")
source("~/dm2023b/src/workflow-semillerio-3/796_HB_semillerios_hibridacion_3.r")

