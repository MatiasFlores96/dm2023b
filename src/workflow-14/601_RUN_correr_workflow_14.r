# Corrida general del workflow

options(error = function() {
  traceback(20)
  options(error = NULL)
  stop("exiting after script error")
})


# corrida de cada paso del workflow

# primeros pasos, relativamente rapidos
source("~/dm2023b/src/workflow-14/611_CA_reparar_dataset_14.r")
source("~/dm2023b/src/workflow-14/621_DR_corregir_drifting_14.r")
source("~/dm2023b/src/workflow-14/631_FE_historia_14.r")
source("~/dm2023b/src/workflow-14/641_TS_training_strategy_14.r")

# ultimos pasos, muy lentos
source("~/dm2023b/src/workflow-14/651_HT_lightgbm_14.r")
source("~/dm2023b/src/workflow-14/661_ZZ_final_14.r")
