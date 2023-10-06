# Corrida general del workflow

options(error = function() {
  traceback(20)
  options(error = NULL)
  stop("exiting after script error")
})


# corrida de cada paso del workflow

# primeros pasos, relativamente rapidos
source("~/dm2023b/src/workflow-7/611_CA_reparar_dataset_07.r")
source("~/dm2023b/src/workflow-7/621_DR_corregir_drifting_07.r")
source("~/dm2023b/src/workflow-7/631_FE_historia_07.r")
source("~/dm2023b/src/workflow-7/641_TS_training_strategy_07.r")

# ultimos pasos, muy lentos
source("~/dm2023b/src/workflow-7/651_HT_lightgbm_07.r")
source("~/dm2023b/src/workflow-7/661_ZZ_final_07.r")
