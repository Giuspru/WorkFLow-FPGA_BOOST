# This script segment is generated automatically by AutoPilot

set axilite_register_dict [dict create]
set port_control {
M { 
	dir I
	width 32
	depth 1
	mode ap_none
	offset 16
	offset_end 23
}
K { 
	dir I
	width 32
	depth 1
	mode ap_none
	offset 24
	offset_end 31
}
N { 
	dir I
	width 32
	depth 1
	mode ap_none
	offset 32
	offset_end 39
}
x { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 40
	offset_end 51
}
y { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 52
	offset_end 63
}
z { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 64
	offset_end 75
}
ap_start { }
ap_done { }
ap_ready { }
ap_continue { }
ap_idle { }
interrupt {
}
}
dict set axilite_register_dict control $port_control


