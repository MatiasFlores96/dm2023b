# Corrida general del workflow

options(error = function() {
  traceback(20)
  options(error = NULL)
  stop("exiting after script error")
})


# corrida de cada paso del workflow

# primeros pasos, relativamente rapidos
source("~/dm2023b/src/workflow-13/611_CA_reparar_dataset_13.r")
source("~/dm2023b/src/workflow-13/621_DR_corregir_drifting_13.r")
source("~/dm2023b/src/workflow-13/631_FE_historia_13.r")
source("~/dm2023b/src/workflow-13/641_TS_training_strategy_13.r")

# ultimos pasos, muy lentos
source("~/dm2023b/src/workflow-13/651_HT_lightgbm_13.r")
source("~/dm2023b/src/workflow-13/661_ZZ_final_13.r")
