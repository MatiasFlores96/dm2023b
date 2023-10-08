# Corrida general del workflow

options(error = function() {
  traceback(20)
  options(error = NULL)
  stop("exiting after script error")
})


# corrida de cada paso del workflow

# primeros pasos, relativamente rapidos
source("~/dm2023b/src/workflow-12/611_CA_reparar_dataset_12.r")
source("~/dm2023b/src/workflow-12/621_DR_corregir_drifting_12.r")
source("~/dm2023b/src/workflow-12/631_FE_historia_12.r")
source("~/dm2023b/src/workflow-12/641_TS_training_strategy_12.r")

# ultimos pasos, muy lentos
source("~/dm2023b/src/workflow-12/651_HT_lightgbm_12.r")
source("~/dm2023b/src/workflow-12/661_ZZ_final_12.r")
