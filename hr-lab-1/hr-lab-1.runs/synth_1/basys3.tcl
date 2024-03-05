# 
# Synthesis run script generated by Vivado
# 

set TIME_start [clock seconds] 
proc create_report { reportName command } {
  set status "."
  append status $reportName ".fail"
  if { [file exists $status] } {
    eval file delete [glob $status]
  }
  send_msg_id runtcl-4 info "Executing : $command"
  set retval [eval catch { $command } msg]
  if { $retval != 0 } {
    set fp [open $status w]
    close $fp
    send_msg_id runtcl-5 warning "$msg"
  }
}
set_param xicom.use_bs_reader 1
create_project -in_memory -part xc7a35tcpg236-1

set_param project.singleFileAddWarning.threshold 0
set_param project.compositeFile.enableAutoGeneration 0
set_param synth.vivado.isSynthRun true
set_property webtalk.parent_dir C:/Users/Student/Documents/2024-winter-lab-5/harry-ryan/hr-lab-1/hr-lab-1.cache/wt [current_project]
set_property parent.project_path C:/Users/Student/Documents/2024-winter-lab-5/harry-ryan/hr-lab-1/hr-lab-1.xpr [current_project]
set_property default_lib xil_defaultlib [current_project]
set_property target_language Verilog [current_project]
set_property ip_repo_paths {
  c:/Users/Student/Downloads/vivado-library-master/vivado-library-master/ip
  c:/Users/Student/Downloads/vivado-library-master
} [current_project]
set_property ip_output_repo c:/Users/Student/Documents/2024-winter-lab-5/harry-ryan/hr-lab-1/hr-lab-1.cache/ip [current_project]
set_property ip_cache_permissions {read write} [current_project]
read_verilog -library xil_defaultlib {
  C:/Users/Student/Documents/2024-winter-lab-5/harry-ryan/hr-lab-1/hr-lab-1.srcs/sources_1/imports/rtl/seq_definitions.v
  C:/Users/Student/Documents/2024-winter-lab-5/harry-ryan/hr-lab-1/hr-lab-1.srcs/sources_1/imports/rtl/seq.v
  C:/Users/Student/Documents/2024-winter-lab-5/harry-ryan/hr-lab-1/hr-lab-1.srcs/sources_1/imports/rtl/seq_add.v
  C:/Users/Student/Documents/2024-winter-lab-5/harry-ryan/hr-lab-1/hr-lab-1.srcs/sources_1/imports/rtl/seq_alu.v
  C:/Users/Student/Documents/2024-winter-lab-5/harry-ryan/hr-lab-1/hr-lab-1.srcs/sources_1/imports/rtl/seq_mult.v
  C:/Users/Student/Documents/2024-winter-lab-5/harry-ryan/hr-lab-1/hr-lab-1.srcs/sources_1/imports/rtl/seq_rf.v
  C:/Users/Student/Documents/2024-winter-lab-5/harry-ryan/hr-lab-1/hr-lab-1.srcs/sources_1/imports/rtl/uart.v
  C:/Users/Student/Documents/2024-winter-lab-5/harry-ryan/hr-lab-1/hr-lab-1.srcs/sources_1/imports/rtl/uart_fifo.v
  C:/Users/Student/Documents/2024-winter-lab-5/harry-ryan/hr-lab-1/hr-lab-1.srcs/sources_1/imports/rtl/uart_top.v
  C:/Users/Student/Documents/2024-winter-lab-5/harry-ryan/hr-lab-1/hr-lab-1.srcs/sources_1/imports/rtl/basys3.v
}
# Mark all dcp files as not used in implementation to prevent them from being
# stitched into the results of this synthesis run. Any black boxes in the
# design are intentionally left as such for best results. Dcp files will be
# stitched into the design at a later time, either when this synthesis run is
# opened, or when it is stitched into a dependent implementation run.
foreach dcp [get_files -quiet -all -filter file_type=="Design\ Checkpoint"] {
  set_property used_in_implementation false $dcp
}
read_xdc C:/Users/Student/Documents/2024-winter-lab-5/harry-ryan/hr-lab-1/hr-lab-1.srcs/constrs_1/imports/Src_lab1/Basys-3_lab1.xdc
set_property used_in_implementation false [get_files C:/Users/Student/Documents/2024-winter-lab-5/harry-ryan/hr-lab-1/hr-lab-1.srcs/constrs_1/imports/Src_lab1/Basys-3_lab1.xdc]

set_param ips.enableIPCacheLiteLoad 0
close [open __synthesis_is_running__ w]

synth_design -top basys3 -part xc7a35tcpg236-1


# disable binary constraint mode for synth run checkpoints
set_param constraints.enableBinaryConstraints false
write_checkpoint -force -noxdef basys3.dcp
create_report "synth_1_synth_report_utilization_0" "report_utilization -file basys3_utilization_synth.rpt -pb basys3_utilization_synth.pb"
file delete __synthesis_is_running__
close [open __synthesis_is_complete__ w]
