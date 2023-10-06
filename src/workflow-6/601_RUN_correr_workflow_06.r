# Corrida general del workflow

options(error = function() {
  traceback(20)
  options(error = NULL)
  stop("exiting after script error")
})


# corrida de cada paso del workflow

# primeros pasos, relativamente rapidos
source("~/dm2023b/src/workflow-6/611_CA_reparar_dataset_06.r")
source("~/dm2023b/src/workflow-6/621_DR_corregir_drifting_06.r")
source("~/dm2023b/src/workflow-6/631_FE_historia_06.r")
source("~/dm2023b/src/workflow-6/641_TS_training_strategy_06.r")

# ultimos pasos, muy lentos
source("~/dm2023b/src/workflow-6/651_HT_lightgbm_06.r")
source("~/dm2023b/src/workflow-6/661_ZZ_final_06.r")
