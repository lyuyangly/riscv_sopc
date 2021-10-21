# Begin_DVE_Session_Save_Info
# DVE full session
# Saved on Thu Oct 21 23:59:35 2021
# Designs open: 1
#   V1: wave.vpd
# Toplevel windows open: 2
# 	TopLevel.1
# 	TopLevel.2
#   Source.1: riscv_sopc_tb.u_dut.u_riscv
#   Wave.1: 122 signals
#   Group count = 5
#   Group Group1 signal count = 13
#   Group Group2 signal count = 5
#   Group Group3 signal count = 23
#   Group Group4 signal count = 41
#   Group Group5 signal count = 40
# End_DVE_Session_Save_Info

# DVE version: I-2014.03
# DVE build date: Feb 27 2014 20:56:47


#<Session mode="Full" path="/home/lyuyang/WORK/riscv_sopc/vrf/session.wave.vpd.tcl" type="Debug">

gui_set_loading_session_type Post
gui_continuetime_set

# Close design
if { [gui_sim_state -check active] } {
    gui_sim_terminate
}
gui_close_db -all
gui_expr_clear_all

# Close all windows
gui_close_window -type Console
gui_close_window -type Wave
gui_close_window -type Source
gui_close_window -type Schematic
gui_close_window -type Data
gui_close_window -type DriverLoad
gui_close_window -type List
gui_close_window -type Memory
gui_close_window -type HSPane
gui_close_window -type DLPane
gui_close_window -type Assertion
gui_close_window -type CovHier
gui_close_window -type CoverageTable
gui_close_window -type CoverageMap
gui_close_window -type CovDetail
gui_close_window -type Local
gui_close_window -type Stack
gui_close_window -type Watch
gui_close_window -type Group
gui_close_window -type Transaction



# Application preferences
gui_set_pref_value -key app_default_font -value {Fixed [Sony],12,-1,5,50,0,0,0,0,0}
gui_src_preferences -tabstop 4 -maxbits 24 -windownumber 1
#<WindowLayout>

# DVE top-level session


# Create and position top-level window: TopLevel.1

if {![gui_exist_window -window TopLevel.1]} {
    set TopLevel.1 [ gui_create_window -type TopLevel \
       -icon $::env(DVE)/auxx/gui/images/toolbars/dvewin.xpm] 
} else { 
    set TopLevel.1 TopLevel.1
}
gui_show_window -window ${TopLevel.1} -show_state maximized -rect {{0 28} {1852 1052}}

# ToolBar settings
gui_set_toolbar_attributes -toolbar {TimeOperations} -dock_state top
gui_set_toolbar_attributes -toolbar {TimeOperations} -offset 0
gui_show_toolbar -toolbar {TimeOperations}
gui_hide_toolbar -toolbar {&File}
gui_set_toolbar_attributes -toolbar {&Edit} -dock_state top
gui_set_toolbar_attributes -toolbar {&Edit} -offset 0
gui_show_toolbar -toolbar {&Edit}
gui_hide_toolbar -toolbar {CopyPaste}
gui_set_toolbar_attributes -toolbar {&Trace} -dock_state top
gui_set_toolbar_attributes -toolbar {&Trace} -offset 0
gui_show_toolbar -toolbar {&Trace}
gui_hide_toolbar -toolbar {TraceInstance}
gui_hide_toolbar -toolbar {BackTrace}
gui_set_toolbar_attributes -toolbar {&Scope} -dock_state top
gui_set_toolbar_attributes -toolbar {&Scope} -offset 0
gui_show_toolbar -toolbar {&Scope}
gui_set_toolbar_attributes -toolbar {&Window} -dock_state top
gui_set_toolbar_attributes -toolbar {&Window} -offset 0
gui_show_toolbar -toolbar {&Window}
gui_set_toolbar_attributes -toolbar {Signal} -dock_state top
gui_set_toolbar_attributes -toolbar {Signal} -offset 0
gui_show_toolbar -toolbar {Signal}
gui_set_toolbar_attributes -toolbar {Zoom} -dock_state top
gui_set_toolbar_attributes -toolbar {Zoom} -offset 0
gui_show_toolbar -toolbar {Zoom}
gui_set_toolbar_attributes -toolbar {Zoom And Pan History} -dock_state top
gui_set_toolbar_attributes -toolbar {Zoom And Pan History} -offset 0
gui_show_toolbar -toolbar {Zoom And Pan History}
gui_set_toolbar_attributes -toolbar {Grid} -dock_state top
gui_set_toolbar_attributes -toolbar {Grid} -offset 0
gui_show_toolbar -toolbar {Grid}
gui_hide_toolbar -toolbar {Simulator}
gui_hide_toolbar -toolbar {Interactive Rewind}
gui_hide_toolbar -toolbar {Testbench}

# End ToolBar settings

# Docked window settings
set HSPane.1 [gui_create_window -type HSPane -parent ${TopLevel.1} -dock_state left -dock_on_new_line true -dock_extent 346]
catch { set Hier.1 [gui_share_window -id ${HSPane.1} -type Hier] }
gui_set_window_pref_key -window ${HSPane.1} -key dock_width -value_type integer -value 346
gui_set_window_pref_key -window ${HSPane.1} -key dock_height -value_type integer -value -1
gui_set_window_pref_key -window ${HSPane.1} -key dock_offset -value_type integer -value 0
gui_update_layout -id ${HSPane.1} {{left 0} {top 0} {width 345} {height 629} {dock_state left} {dock_on_new_line true} {child_hier_colhier 237} {child_hier_coltype 100} {child_hier_colpd 0} {child_hier_col1 0} {child_hier_col2 1} {child_hier_col3 -1}}
set DLPane.1 [gui_create_window -type DLPane -parent ${TopLevel.1} -dock_state left -dock_on_new_line true -dock_extent 417]
catch { set Data.1 [gui_share_window -id ${DLPane.1} -type Data] }
gui_set_window_pref_key -window ${DLPane.1} -key dock_width -value_type integer -value 417
gui_set_window_pref_key -window ${DLPane.1} -key dock_height -value_type integer -value 628
gui_set_window_pref_key -window ${DLPane.1} -key dock_offset -value_type integer -value 0
gui_update_layout -id ${DLPane.1} {{left 0} {top 0} {width 416} {height 629} {dock_state left} {dock_on_new_line true} {child_data_colvariable 239} {child_data_colvalue 39} {child_data_coltype 129} {child_data_col1 0} {child_data_col2 1} {child_data_col3 2}}
set Console.1 [gui_create_window -type Console -parent ${TopLevel.1} -dock_state bottom -dock_on_new_line true -dock_extent 315]
gui_set_window_pref_key -window ${Console.1} -key dock_width -value_type integer -value 295
gui_set_window_pref_key -window ${Console.1} -key dock_height -value_type integer -value 315
gui_set_window_pref_key -window ${Console.1} -key dock_offset -value_type integer -value 0
gui_update_layout -id ${Console.1} {{left 0} {top 0} {width 1852} {height 314} {dock_state bottom} {dock_on_new_line true}}
#### Start - Readjusting docked view's offset / size
set dockAreaList { top left right bottom }
foreach dockArea $dockAreaList {
  set viewList [gui_ekki_get_window_ids -active_parent -dock_area $dockArea]
  foreach view $viewList {
      if {[lsearch -exact [gui_get_window_pref_keys -window $view] dock_width] != -1} {
        set dockWidth [gui_get_window_pref_value -window $view -key dock_width]
        set dockHeight [gui_get_window_pref_value -window $view -key dock_height]
        set offset [gui_get_window_pref_value -window $view -key dock_offset]
        if { [string equal "top" $dockArea] || [string equal "bottom" $dockArea]} {
          gui_set_window_attributes -window $view -dock_offset $offset -width $dockWidth
        } else {
          gui_set_window_attributes -window $view -dock_offset $offset -height $dockHeight
        }
      }
  }
}
#### End - Readjusting docked view's offset / size
gui_sync_global -id ${TopLevel.1} -option true

# MDI window settings
set Source.1 [gui_create_window -type {Source}  -parent ${TopLevel.1}]
gui_show_window -window ${Source.1} -show_state maximized
gui_update_layout -id ${Source.1} {{show_state maximized} {dock_state undocked} {dock_on_new_line false}}

# End MDI window settings


# Create and position top-level window: TopLevel.2

if {![gui_exist_window -window TopLevel.2]} {
    set TopLevel.2 [ gui_create_window -type TopLevel \
       -icon $::env(DVE)/auxx/gui/images/toolbars/dvewin.xpm] 
} else { 
    set TopLevel.2 TopLevel.2
}
gui_show_window -window ${TopLevel.2} -show_state maximized -rect {{0 28} {1852 1052}}

# ToolBar settings
gui_set_toolbar_attributes -toolbar {TimeOperations} -dock_state top
gui_set_toolbar_attributes -toolbar {TimeOperations} -offset 0
gui_show_toolbar -toolbar {TimeOperations}
gui_hide_toolbar -toolbar {&File}
gui_set_toolbar_attributes -toolbar {&Edit} -dock_state top
gui_set_toolbar_attributes -toolbar {&Edit} -offset 0
gui_show_toolbar -toolbar {&Edit}
gui_hide_toolbar -toolbar {CopyPaste}
gui_set_toolbar_attributes -toolbar {&Trace} -dock_state top
gui_set_toolbar_attributes -toolbar {&Trace} -offset 0
gui_show_toolbar -toolbar {&Trace}
gui_hide_toolbar -toolbar {TraceInstance}
gui_hide_toolbar -toolbar {BackTrace}
gui_set_toolbar_attributes -toolbar {&Scope} -dock_state top
gui_set_toolbar_attributes -toolbar {&Scope} -offset 0
gui_show_toolbar -toolbar {&Scope}
gui_set_toolbar_attributes -toolbar {&Window} -dock_state top
gui_set_toolbar_attributes -toolbar {&Window} -offset 0
gui_show_toolbar -toolbar {&Window}
gui_set_toolbar_attributes -toolbar {Signal} -dock_state top
gui_set_toolbar_attributes -toolbar {Signal} -offset 0
gui_show_toolbar -toolbar {Signal}
gui_set_toolbar_attributes -toolbar {Zoom} -dock_state top
gui_set_toolbar_attributes -toolbar {Zoom} -offset 0
gui_show_toolbar -toolbar {Zoom}
gui_set_toolbar_attributes -toolbar {Zoom And Pan History} -dock_state top
gui_set_toolbar_attributes -toolbar {Zoom And Pan History} -offset 0
gui_show_toolbar -toolbar {Zoom And Pan History}
gui_set_toolbar_attributes -toolbar {Grid} -dock_state top
gui_set_toolbar_attributes -toolbar {Grid} -offset 0
gui_show_toolbar -toolbar {Grid}
gui_hide_toolbar -toolbar {Simulator}
gui_hide_toolbar -toolbar {Interactive Rewind}
gui_set_toolbar_attributes -toolbar {Testbench} -dock_state top
gui_set_toolbar_attributes -toolbar {Testbench} -offset 0
gui_show_toolbar -toolbar {Testbench}

# End ToolBar settings

# Docked window settings
gui_sync_global -id ${TopLevel.2} -option true

# MDI window settings
set Wave.1 [gui_create_window -type {Wave}  -parent ${TopLevel.2}]
gui_show_window -window ${Wave.1} -show_state maximized
gui_update_layout -id ${Wave.1} {{show_state maximized} {dock_state undocked} {dock_on_new_line false} {child_wave_left 538} {child_wave_right 1309} {child_wave_colname 288} {child_wave_colvalue 246} {child_wave_col1 0} {child_wave_col2 1}}

# End MDI window settings

gui_set_env TOPLEVELS::TARGET_FRAME(Source) ${TopLevel.1}
gui_set_env TOPLEVELS::TARGET_FRAME(Schematic) ${TopLevel.1}
gui_set_env TOPLEVELS::TARGET_FRAME(PathSchematic) ${TopLevel.1}
gui_set_env TOPLEVELS::TARGET_FRAME(Wave) none
gui_set_env TOPLEVELS::TARGET_FRAME(List) none
gui_set_env TOPLEVELS::TARGET_FRAME(Memory) ${TopLevel.1}
gui_set_env TOPLEVELS::TARGET_FRAME(DriverLoad) none
gui_update_statusbar_target_frame ${TopLevel.1}
gui_update_statusbar_target_frame ${TopLevel.2}

#</WindowLayout>

#<Database>

# DVE Open design session: 

if { ![gui_is_db_opened -db {wave.vpd}] } {
	gui_open_db -design V1 -file wave.vpd -nosource
}
gui_set_precision 1ns
gui_set_time_units 1ns
#</Database>

# DVE Global setting session: 


# Global: Bus

# Global: Expressions

# Global: Signal Time Shift

# Global: Signal Compare

# Global: Signal Groups
gui_load_child_values {riscv_sopc_tb.u_dut.u_riscv}
gui_load_child_values {riscv_sopc_tb.u_dut.u_sram}
gui_load_child_values {riscv_sopc_tb.u_dut.u_axibus_m2s4}
gui_load_child_values {riscv_sopc_tb.u_dut.u_riscv.u_core}


set _session_group_35 Group1
gui_sg_create "$_session_group_35"
set Group1 "$_session_group_35"

gui_sg_addsignal -group "$_session_group_35" { riscv_sopc_tb.u_dut.u_sram.clk_i riscv_sopc_tb.u_dut.u_riscv.u_core.mem_i_pc_o riscv_sopc_tb.u_dut.u_riscv.u_core.mem_i_accept_i riscv_sopc_tb.u_dut.u_riscv.u_core.mem_i_rd_o riscv_sopc_tb.u_dut.u_riscv.u_core.mem_i_valid_i riscv_sopc_tb.u_dut.u_riscv.u_core.mem_i_inst_i riscv_sopc_tb.u_dut.u_riscv.u_core.mem_d_rd_o riscv_sopc_tb.u_dut.u_riscv.u_core.mem_d_wr_o riscv_sopc_tb.u_dut.u_riscv.u_core.mem_d_addr_o riscv_sopc_tb.u_dut.u_riscv.u_core.mem_d_data_wr_o riscv_sopc_tb.u_dut.u_riscv.u_core.mem_d_data_rd_i riscv_sopc_tb.u_dut.u_riscv.u_core.mem_d_ack_i riscv_sopc_tb.u_dut.u_riscv.u_core.mem_d_accept_i }

set _session_group_36 Group2
gui_sg_create "$_session_group_36"
set Group2 "$_session_group_36"

gui_sg_addsignal -group "$_session_group_36" { riscv_sopc_tb.u_dut.u_sram.wr_i riscv_sopc_tb.u_dut.u_sram.rd_i riscv_sopc_tb.u_dut.u_sram.addr_i riscv_sopc_tb.u_dut.u_sram.data_i riscv_sopc_tb.u_dut.u_sram.data_o }

set _session_group_37 Group3
gui_sg_create "$_session_group_37"
set Group3 "$_session_group_37"

gui_sg_addsignal -group "$_session_group_37" { riscv_sopc_tb.u_dut.u_riscv.axi_d_awid_o riscv_sopc_tb.u_dut.u_riscv.axi_d_awlen_o riscv_sopc_tb.u_dut.u_riscv.axi_d_awburst_o riscv_sopc_tb.u_dut.u_riscv.axi_d_awaddr_o riscv_sopc_tb.u_dut.u_riscv.axi_d_awready_i riscv_sopc_tb.u_dut.u_riscv.axi_d_awvalid_o riscv_sopc_tb.u_dut.u_riscv.axi_d_wstrb_o riscv_sopc_tb.u_dut.u_riscv.axi_d_wdata_o riscv_sopc_tb.u_dut.u_riscv.axi_d_wlast_o riscv_sopc_tb.u_dut.u_riscv.axi_d_wready_i riscv_sopc_tb.u_dut.u_riscv.axi_d_wvalid_o riscv_sopc_tb.u_dut.u_riscv.axi_d_arid_o riscv_sopc_tb.u_dut.u_riscv.axi_d_arlen_o riscv_sopc_tb.u_dut.u_riscv.axi_d_arburst_o riscv_sopc_tb.u_dut.u_riscv.axi_d_araddr_o riscv_sopc_tb.u_dut.u_riscv.axi_d_arready_i riscv_sopc_tb.u_dut.u_riscv.axi_d_arvalid_o riscv_sopc_tb.u_dut.u_riscv.axi_d_rid_i riscv_sopc_tb.u_dut.u_riscv.axi_d_rvalid_i riscv_sopc_tb.u_dut.u_riscv.axi_d_rready_o riscv_sopc_tb.u_dut.u_riscv.axi_d_rlast_i riscv_sopc_tb.u_dut.u_riscv.axi_d_rdata_i riscv_sopc_tb.u_dut.u_riscv.axi_d_rresp_i }

set _session_group_38 Group4
gui_sg_create "$_session_group_38"
set Group4 "$_session_group_38"

gui_sg_addsignal -group "$_session_group_38" { riscv_sopc_tb.u_dut.u_axibus_m2s4.M1_MID riscv_sopc_tb.u_dut.u_axibus_m2s4.M1_AWID riscv_sopc_tb.u_dut.u_axibus_m2s4.M1_AWADDR riscv_sopc_tb.u_dut.u_axibus_m2s4.M1_AWLEN riscv_sopc_tb.u_dut.u_axibus_m2s4.M1_AWLOCK riscv_sopc_tb.u_dut.u_axibus_m2s4.M1_AWSIZE riscv_sopc_tb.u_dut.u_axibus_m2s4.M1_AWBURST riscv_sopc_tb.u_dut.u_axibus_m2s4.M1_AWCACHE riscv_sopc_tb.u_dut.u_axibus_m2s4.M1_AWPROT riscv_sopc_tb.u_dut.u_axibus_m2s4.M1_AWVALID riscv_sopc_tb.u_dut.u_axibus_m2s4.M1_AWREADY riscv_sopc_tb.u_dut.u_axibus_m2s4.M1_AWQOS riscv_sopc_tb.u_dut.u_axibus_m2s4.M1_AWREGION riscv_sopc_tb.u_dut.u_axibus_m2s4.M1_WID riscv_sopc_tb.u_dut.u_axibus_m2s4.M1_WDATA riscv_sopc_tb.u_dut.u_axibus_m2s4.M1_WSTRB riscv_sopc_tb.u_dut.u_axibus_m2s4.M1_WLAST riscv_sopc_tb.u_dut.u_axibus_m2s4.M1_WVALID riscv_sopc_tb.u_dut.u_axibus_m2s4.M1_WREADY riscv_sopc_tb.u_dut.u_axibus_m2s4.M1_BID riscv_sopc_tb.u_dut.u_axibus_m2s4.M1_BRESP riscv_sopc_tb.u_dut.u_axibus_m2s4.M1_BVALID riscv_sopc_tb.u_dut.u_axibus_m2s4.M1_BREADY riscv_sopc_tb.u_dut.u_axibus_m2s4.M1_ARID riscv_sopc_tb.u_dut.u_axibus_m2s4.M1_ARADDR riscv_sopc_tb.u_dut.u_axibus_m2s4.M1_ARLEN riscv_sopc_tb.u_dut.u_axibus_m2s4.M1_ARLOCK riscv_sopc_tb.u_dut.u_axibus_m2s4.M1_ARSIZE riscv_sopc_tb.u_dut.u_axibus_m2s4.M1_ARBURST riscv_sopc_tb.u_dut.u_axibus_m2s4.M1_ARCACHE riscv_sopc_tb.u_dut.u_axibus_m2s4.M1_ARPROT riscv_sopc_tb.u_dut.u_axibus_m2s4.M1_ARVALID riscv_sopc_tb.u_dut.u_axibus_m2s4.M1_ARREADY riscv_sopc_tb.u_dut.u_axibus_m2s4.M1_ARQOS riscv_sopc_tb.u_dut.u_axibus_m2s4.M1_ARREGION riscv_sopc_tb.u_dut.u_axibus_m2s4.M1_RID riscv_sopc_tb.u_dut.u_axibus_m2s4.M1_RDATA riscv_sopc_tb.u_dut.u_axibus_m2s4.M1_RRESP riscv_sopc_tb.u_dut.u_axibus_m2s4.M1_RLAST riscv_sopc_tb.u_dut.u_axibus_m2s4.M1_RVALID riscv_sopc_tb.u_dut.u_axibus_m2s4.M1_RREADY }

set _session_group_39 Group5
gui_sg_create "$_session_group_39"
set Group5 "$_session_group_39"

gui_sg_addsignal -group "$_session_group_39" { riscv_sopc_tb.u_dut.u_axibus_m2s4.S0_AWID riscv_sopc_tb.u_dut.u_axibus_m2s4.S0_AWADDR riscv_sopc_tb.u_dut.u_axibus_m2s4.S0_AWLEN riscv_sopc_tb.u_dut.u_axibus_m2s4.S0_AWLOCK riscv_sopc_tb.u_dut.u_axibus_m2s4.S0_AWSIZE riscv_sopc_tb.u_dut.u_axibus_m2s4.S0_AWBURST riscv_sopc_tb.u_dut.u_axibus_m2s4.S0_AWCACHE riscv_sopc_tb.u_dut.u_axibus_m2s4.S0_AWPROT riscv_sopc_tb.u_dut.u_axibus_m2s4.S0_AWVALID riscv_sopc_tb.u_dut.u_axibus_m2s4.S0_AWREADY riscv_sopc_tb.u_dut.u_axibus_m2s4.S0_AWQOS riscv_sopc_tb.u_dut.u_axibus_m2s4.S0_AWREGION riscv_sopc_tb.u_dut.u_axibus_m2s4.S0_WID riscv_sopc_tb.u_dut.u_axibus_m2s4.S0_WDATA riscv_sopc_tb.u_dut.u_axibus_m2s4.S0_WSTRB riscv_sopc_tb.u_dut.u_axibus_m2s4.S0_WLAST riscv_sopc_tb.u_dut.u_axibus_m2s4.S0_WVALID riscv_sopc_tb.u_dut.u_axibus_m2s4.S0_WREADY riscv_sopc_tb.u_dut.u_axibus_m2s4.S0_BID riscv_sopc_tb.u_dut.u_axibus_m2s4.S0_BRESP riscv_sopc_tb.u_dut.u_axibus_m2s4.S0_BVALID riscv_sopc_tb.u_dut.u_axibus_m2s4.S0_BREADY riscv_sopc_tb.u_dut.u_axibus_m2s4.S0_ARID riscv_sopc_tb.u_dut.u_axibus_m2s4.S0_ARADDR riscv_sopc_tb.u_dut.u_axibus_m2s4.S0_ARLEN riscv_sopc_tb.u_dut.u_axibus_m2s4.S0_ARLOCK riscv_sopc_tb.u_dut.u_axibus_m2s4.S0_ARSIZE riscv_sopc_tb.u_dut.u_axibus_m2s4.S0_ARBURST riscv_sopc_tb.u_dut.u_axibus_m2s4.S0_ARCACHE riscv_sopc_tb.u_dut.u_axibus_m2s4.S0_ARPROT riscv_sopc_tb.u_dut.u_axibus_m2s4.S0_ARVALID riscv_sopc_tb.u_dut.u_axibus_m2s4.S0_ARREADY riscv_sopc_tb.u_dut.u_axibus_m2s4.S0_ARQOS riscv_sopc_tb.u_dut.u_axibus_m2s4.S0_ARREGION riscv_sopc_tb.u_dut.u_axibus_m2s4.S0_RID riscv_sopc_tb.u_dut.u_axibus_m2s4.S0_RDATA riscv_sopc_tb.u_dut.u_axibus_m2s4.S0_RRESP riscv_sopc_tb.u_dut.u_axibus_m2s4.S0_RLAST riscv_sopc_tb.u_dut.u_axibus_m2s4.S0_RVALID riscv_sopc_tb.u_dut.u_axibus_m2s4.S0_RREADY }

# Global: Highlighting

# Global: Stack
gui_change_stack_mode -mode list

# Post database loading setting...

# Restore C1 time
gui_set_time -C1_only 3295



# Save global setting...

# Wave/List view global setting
gui_cov_show_value -switch false

# Close all empty TopLevel windows
foreach __top [gui_ekki_get_window_ids -type TopLevel] {
    if { [llength [gui_ekki_get_window_ids -parent $__top]] == 0} {
        gui_close_window -window $__top
    }
}
gui_set_loading_session_type noSession
# DVE View/pane content session: 


# Hier 'Hier.1'
gui_show_window -window ${Hier.1}
gui_list_set_filter -id ${Hier.1} -list { {Package 1} {All 0} {Process 1} {VirtPowSwitch 0} {UnnamedProcess 1} {UDP 0} {Function 1} {Block 1} {OVA Unit 1} {LeafScCell 1} {LeafVlgCell 1} {Interface 1} {LeafVhdCell 1} {$unit 1} {NamedBlock 1} {Task 1} {VlgPackage 1} {ClassDef 1} {VirtIsoCell 0} }
gui_list_set_filter -id ${Hier.1} -text {*}
gui_hier_list_init -id ${Hier.1}
gui_change_design -id ${Hier.1} -design V1
catch {gui_list_expand -id ${Hier.1} riscv_sopc_tb}
catch {gui_list_expand -id ${Hier.1} riscv_sopc_tb.u_dut}
catch {gui_list_select -id ${Hier.1} {riscv_sopc_tb.u_dut.u_axibus_m2s4}}
gui_view_scroll -id ${Hier.1} -vertical -set 0
gui_view_scroll -id ${Hier.1} -horizontal -set 0

# Data 'Data.1'
gui_list_set_filter -id ${Data.1} -list { {Buffer 1} {Input 1} {Others 1} {Linkage 1} {Output 1} {LowPower 1} {Parameter 1} {All 1} {Aggregate 1} {LibBaseMember 1} {Event 1} {Assertion 1} {Constant 1} {Interface 1} {BaseMembers 1} {Signal 1} {$unit 1} {Inout 1} {Variable 1} }
gui_list_set_filter -id ${Data.1} -text {*}
gui_list_show_data -id ${Data.1} {riscv_sopc_tb.u_dut.u_axibus_m2s4}
gui_show_window -window ${Data.1}
catch { gui_list_select -id ${Data.1} {riscv_sopc_tb.u_dut.u_axibus_m2s4.S0_AWID riscv_sopc_tb.u_dut.u_axibus_m2s4.S0_AWADDR riscv_sopc_tb.u_dut.u_axibus_m2s4.S0_AWLEN riscv_sopc_tb.u_dut.u_axibus_m2s4.S0_AWLOCK riscv_sopc_tb.u_dut.u_axibus_m2s4.S0_AWSIZE riscv_sopc_tb.u_dut.u_axibus_m2s4.S0_AWBURST riscv_sopc_tb.u_dut.u_axibus_m2s4.S0_AWCACHE riscv_sopc_tb.u_dut.u_axibus_m2s4.S0_AWPROT riscv_sopc_tb.u_dut.u_axibus_m2s4.S0_AWVALID riscv_sopc_tb.u_dut.u_axibus_m2s4.S0_AWREADY riscv_sopc_tb.u_dut.u_axibus_m2s4.S0_AWQOS riscv_sopc_tb.u_dut.u_axibus_m2s4.S0_AWREGION riscv_sopc_tb.u_dut.u_axibus_m2s4.S0_WID riscv_sopc_tb.u_dut.u_axibus_m2s4.S0_WDATA riscv_sopc_tb.u_dut.u_axibus_m2s4.S0_WSTRB riscv_sopc_tb.u_dut.u_axibus_m2s4.S0_WLAST riscv_sopc_tb.u_dut.u_axibus_m2s4.S0_WVALID riscv_sopc_tb.u_dut.u_axibus_m2s4.S0_WREADY riscv_sopc_tb.u_dut.u_axibus_m2s4.S0_BID riscv_sopc_tb.u_dut.u_axibus_m2s4.S0_BRESP riscv_sopc_tb.u_dut.u_axibus_m2s4.S0_BVALID riscv_sopc_tb.u_dut.u_axibus_m2s4.S0_BREADY riscv_sopc_tb.u_dut.u_axibus_m2s4.S0_ARID riscv_sopc_tb.u_dut.u_axibus_m2s4.S0_ARADDR riscv_sopc_tb.u_dut.u_axibus_m2s4.S0_ARLEN riscv_sopc_tb.u_dut.u_axibus_m2s4.S0_ARLOCK riscv_sopc_tb.u_dut.u_axibus_m2s4.S0_ARSIZE riscv_sopc_tb.u_dut.u_axibus_m2s4.S0_ARBURST riscv_sopc_tb.u_dut.u_axibus_m2s4.S0_ARCACHE riscv_sopc_tb.u_dut.u_axibus_m2s4.S0_ARPROT riscv_sopc_tb.u_dut.u_axibus_m2s4.S0_ARVALID riscv_sopc_tb.u_dut.u_axibus_m2s4.S0_ARREADY riscv_sopc_tb.u_dut.u_axibus_m2s4.S0_ARQOS riscv_sopc_tb.u_dut.u_axibus_m2s4.S0_ARREGION riscv_sopc_tb.u_dut.u_axibus_m2s4.S0_RID riscv_sopc_tb.u_dut.u_axibus_m2s4.S0_RDATA riscv_sopc_tb.u_dut.u_axibus_m2s4.S0_RRESP riscv_sopc_tb.u_dut.u_axibus_m2s4.S0_RLAST riscv_sopc_tb.u_dut.u_axibus_m2s4.S0_RVALID riscv_sopc_tb.u_dut.u_axibus_m2s4.S0_RREADY }}
gui_view_scroll -id ${Data.1} -vertical -set 2100
gui_view_scroll -id ${Data.1} -horizontal -set 0
gui_view_scroll -id ${Hier.1} -vertical -set 0
gui_view_scroll -id ${Hier.1} -horizontal -set 0

# Source 'Source.1'
gui_src_value_annotate -id ${Source.1} -switch false
gui_set_env TOGGLE::VALUEANNOTATE 0
gui_open_source -id ${Source.1}  -replace -active riscv_sopc_tb.u_dut.u_riscv ../rtl/riscv/top_cache_axi/src_v/riscv_top.v
gui_view_scroll -id ${Source.1} -vertical -set 792
gui_src_set_reusable -id ${Source.1}

# View 'Wave.1'
gui_wv_sync -id ${Wave.1} -switch false
set groupExD [gui_get_pref_value -category Wave -key exclusiveSG]
gui_set_pref_value -category Wave -key exclusiveSG -value {false}
set origWaveHeight [gui_get_pref_value -category Wave -key waveRowHeight]
gui_list_set_height -id Wave -height 25
set origGroupCreationState [gui_list_create_group_when_add -wave]
gui_list_create_group_when_add -wave -disable
gui_marker_set_ref -id ${Wave.1}  C1
gui_wv_zoom_timerange -id ${Wave.1} 0 1000035
gui_list_add_group -id ${Wave.1} -after {New Group} {Group1}
gui_list_add_group -id ${Wave.1} -after {New Group} {Group2}
gui_list_add_group -id ${Wave.1} -after {New Group} {Group3}
gui_list_add_group -id ${Wave.1} -after {New Group} {Group4}
gui_list_add_group -id ${Wave.1} -after {New Group} {Group5}
gui_list_collapse -id ${Wave.1} Group2
gui_list_collapse -id ${Wave.1} Group3
gui_list_collapse -id ${Wave.1} Group4
gui_list_collapse -id ${Wave.1} Group5
gui_seek_criteria -id ${Wave.1} {Any Edge}



gui_set_env TOGGLE::DEFAULT_WAVE_WINDOW ${Wave.1}
gui_set_pref_value -category Wave -key exclusiveSG -value $groupExD
gui_list_set_height -id Wave -height $origWaveHeight
if {$origGroupCreationState} {
	gui_list_create_group_when_add -wave -enable
}
if { $groupExD } {
 gui_msg_report -code DVWW028
}
gui_list_set_filter -id ${Wave.1} -list { {Buffer 1} {Input 1} {Others 1} {Linkage 1} {Output 1} {Parameter 1} {All 1} {Aggregate 1} {LibBaseMember 1} {Event 1} {Assertion 1} {Constant 1} {Interface 1} {BaseMembers 1} {Signal 1} {$unit 1} {Inout 1} {Variable 1} }
gui_list_set_filter -id ${Wave.1} -text {*}
gui_list_set_insertion_bar  -id ${Wave.1} -group Group3  -position in

gui_marker_move -id ${Wave.1} {C1} 3295
gui_view_scroll -id ${Wave.1} -vertical -set 0
gui_show_grid -id ${Wave.1} -enable false
# Restore toplevel window zorder
# The toplevel window could be closed if it has no view/pane
if {[gui_exist_window -window ${TopLevel.1}]} {
	gui_set_active_window -window ${TopLevel.1}
	gui_set_active_window -window ${Source.1}
}
if {[gui_exist_window -window ${TopLevel.2}]} {
	gui_set_active_window -window ${TopLevel.2}
	gui_set_active_window -window ${Wave.1}
}
#</Session>

