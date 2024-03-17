
# PlanAhead Launch Script for Post-Synthesis pin planning, created by Project Navigator

create_project -name TP1 -dir "D:/Users/afons/Desktop/TP1 Backup/planAhead_run_1" -part xc3s500efg320-4
set_property design_mode GateLvl [get_property srcset [current_run -impl]]
set_property edif_top_file "D:/Users/afons/Desktop/TP1 Backup/Placa_Mae.ngc" [ get_property srcset [ current_run ] ]
add_files -norecurse { {D:/Users/afons/Desktop/TP1 Backup} }
set_param project.pinAheadLayout  yes
set_property target_constrs_file "Placa_Mae.ucf" [current_fileset -constrset]
add_files [list {Placa_Mae.ucf}] -fileset [get_property constrset [current_run]]
link_design
