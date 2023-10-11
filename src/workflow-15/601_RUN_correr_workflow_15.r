# Corrida general del workflow

options(error = function() {
  traceback(20)
  options(error = NULL)
  stop("exiting after script error")
})


# corrida de cada paso del workflow

# primeros pasos, relativamente rapidos
source("~/dm2023b/src/workflow-15/611_CA_reparar_dataset_15.r")
source("~/dm2023b/src/workflow-15/621_DR_corregir_drifting_15.r")
source("~/dm2023b/src/workflow-15/631_FE_historia_15.r")
source("~/dm2023b/src/workflow-15/641_TS_training_strategy_15.r")

# ultimos pasos, muy lentos
source("~/dm2023b/src/workflow-15/651_HT_lightgbm_15.r")
source("~/dm2023b/src/workflow-15/661_ZZ_final_15.r")
