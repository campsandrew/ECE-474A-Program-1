# ECE-474A-Program-1

Names: Andrew Camps, Jason Tran, Steve Miller
NetIDs: andrewcamps, ichikasuto, stevenmiller
Xilinx Synthesis Tool Version: Vivado 2016.4

Individual Modules:
	Board: xc7a100tcsg324-1
	Speed: -1	
CIRCUIT1: 
	Board: xc7a100tcsg324-1
	Speed: -1
CIRCUIT2:
	Board: xc7a100tcsg324-1
	Speed: -1
CIRCUIT3:
	Board: xc7a100tcsg324-1
	Speed: -1
CIRCUIT4:
	Board: xc7a100tcsg324-1
	Speed: -1
CIRCUIT5:
	Board: xc7a200tfbg676-1
	Speed: -1
CIRCUIT6:
	Board: xc7a200tfbg676-1 
	Speed: -1
CIRCUIT7:
	Board: xc7a200tfbg676-1
	Speed: -1
CIRCUIT8:
	Board: xc7a200tfbg676
	Speed: -1

Description of Calculation Critical Path:
	Individual Modules:
		Actual Timing - Was found by synthesizing each module for each data width and grabbing the unconstrained total delay from the ‘Synthesized Design’ menu. These were then recorded in the DPCL_LAT.txt

	CIRCUIT1 - 8:
		Estimated Timing - Was found by drawing out the critical paths of each circuit and adding up the timing recorded in NETLISTS_LAT.txt from each individual module that was used in the critical path
		Actual Timing - Was found by implementing each module using the boards specified above and grabbing the unconstrained total delay from the ‘Implementation Design’ menu. These were then recorded in the NETLISTS_LAT.txt