# Corrida general del workflow

options(error = function() {
  traceback(20)
  options(error = NULL)
  stop("exiting after script error")
})


# corrida de cada paso del workflow

# primeros pasos, relativamente rapidos
source("~/dm2023b/src/workflow-semillerio-4/711_CA_reparar_dataset_4.r")
source("~/dm2023b/src/workflow-semillerio-4/721_DR_corregir_drifting_4.r")
source("~/dm2023b/src/workflow-semillerio-4/731_FE_historia_4.r")
source("~/dm2023b/src/workflow-semillerio-4/741_TS_training_strategy_4.r")

# ultimos pasos, muy lentos
source("~/dm2023b/src/workflow-semillerio-4/751_HT_lightgbm_4.r")
source("~/dm2023b/src/workflow-semillerio-4/795_ZZ_final_semillerio_4.r")

