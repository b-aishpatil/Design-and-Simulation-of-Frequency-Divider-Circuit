# Design-and-Simulation-of-Frequency-Divider-Circuit

- [Abstract](#abstract)
- [Reference Circuit Diagram](#reference-circuit-diagram)
- [Reference Waveform](#reference-waveform)
- [Circuit Details](#circuit-details)
- [Working](#Working)
- [Software Used](#software-used)
  * [eSim](#esim)
  * [NgSpice](#ngspice)
  * [Makerchip](#makerchip)
  * [Verilator](#verilator)
- [Circuit Diagram in eSim](#circuit-diagram-in-esim)
- [Verilog Code](#verilog-code)
- [Makerchip](#makerchip-1)
- [Makerchip Plots](#makerchip-plots)
- [Netlists](#netlists)
- [NgSpice Plots](#ngspice-plots)
- [GAW Plots](#gaw-plots)
- [Steps to run generate NgVeri Model](#steps-to-run-generate-ngveri-model)
- [Steps to run this project](#steps-to-run-this-project)
- [Acknowlegdements](#acknowlegdements)
- [References](#references)


## Abstract
Analog and digital applications require the use of frequency division to tailor the signal according to the circuit requirements.
This repository represents the design and simulation of mixed signal circuit -  'Frequency Divider' using Opamp Multivibrator (Analog Circuit) and MOD-8 Up Negative edge triggered Counter (Digital Circuit).  The Op-amp Multivibrator is an astable oscillator circuit that generates a rectangular output waveform and counter divides the frequency of that waveform by 8. 

## Reference Circuit Diagram
![ReferenceCircuitDiagram](https://user-images.githubusercontent.com/92450677/157455957-69a5543c-ce6f-4f3b-806e-797c3ddab812.png)

## Reference Waveform
![ReferenceWaveform](https://user-images.githubusercontent.com/92450677/157457082-d73ef634-d8c5-4d32-a55c-9189b1765b3e.jpg)

## Circuit Details

**Opamp Multivibrator:**

The Op-amp Multivibrator is an astable oscillator circuit that generates a square wave using an RC timing network connected to the inverting input of the operational amplifier and a voltage divider network connected to the other non-inverting input.
It has two states, neither of which are stable as it is constantly switching between these two states with the time spent in each state controlled by the charging or discharging of the capacitor through a resistor.

The Time period of the square wave is given by:<br>
```T = 2RC ln(1 + β / 1 - β )``` <br>
```Where, β = R2/R1+R2```

**Divide-by-8/ Mod-8 Counter:**

The three chain D-flipflops which acts as a negative-edge-triggered up-asynchronous counter (Ripple Counter).
The first D flip-flop is clocked by the external clock pulse(fclk) and then each successive flip-flop is clocked by the complemented output of the preceding flip-flop. First flipflop toggles at the negative edge of external clock pulse. Second and third flipflops toggles at every negative clock edge of preceding output of the flipflop.
One flip-flop will divide the clock, ƒclk by 2, second flip-flops will divide ƒclk by 4 and thus after third flipflop, we will get frequency ƒclk divide by 8.

## Working

The opamp multivibrator generates square wave. This wave is converted into digital form using ADC and given as input as external clock pulse to the counter. Counter divides the clock frequency by 8. The waveform with new frequency is passed through DAC to get the final output waveform into analog signal. 

## Software Used
### eSim
It is an Open Source EDA developed by FOSSEE, IIT Bombay. It is used for electronic circuit simulation. It is made by the combination of two software namely NgSpice and KiCAD.
</br>
For more details refer:
</br>
https://esim.fossee.in/home
### NgSpice
It is an Open Source Software for Spice Simulations. For more details refer:
</br>
http://ngspice.sourceforge.net/docs.html
### Makerchip
It is an Online Web Browser IDE for Verilog/System-verilog/TL-Verilog Simulation. Refer
</br> https://www.makerchip.com/
### Verilator
It is a tool which converts Verilog code to C++ objects. Refer:
https://www.veripool.org/verilator/

## Circuit Diagram in eSim
The following is the schematic in eSim:
![image]()
## Verilog Code

```

    // Project  : 	 Frequency divider by 8
    // By       :	 Aishwarya Balkrishna Patil

module Aishwarya_frequencyDivider ( clk,out_clk );

output out_clk;

input clk ;

reg [2:0]m;

initial m = 0;

always @ (negedge (clk)) begin
 m <= m + 1;
end

assign out_clk = m[2];


endmodule
```

<hr>

## Makerchip

```
\TLV_version 1d: tl-x.org
\SV
/* verilator lint_off UNUSED*/  /* verilator lint_off DECLFILENAME*/  /* verilator lint_off BLKSEQ*/  /* verilator lint_off WIDTH*/  /* verilator lint_off SELRANGE*/  /* verilator lint_off PINCONNECTEMPTY*/  /* verilator lint_off DEFPARAM*/  /* verilator lint_off IMPLICIT*/  /* verilator lint_off COMBDLY*/  /* verilator lint_off SYNCASYNCNET*/  /* verilator lint_off UNOPTFLAT */  /* verilator lint_off UNSIGNED*/  /* verilator lint_off CASEINCOMPLETE*/  /* verilator lint_off UNDRIVEN*/  /* verilator lint_off VARHIDDEN*/  /* verilator lint_off CASEX*/  /* verilator lint_off CASEOVERLAP*/  /* verilator lint_off PINMISSING*/  /* verilator lint_off BLKANDNBLK*/  /* verilator lint_off MULTIDRIVEN*/   /* verilator lint_off WIDTHCONCAT*/  /* verilator lint_off ASSIGNDLY*/  /* verilator lint_off MODDUP*/  /* verilator lint_off STMTDLY*/  /* verilator lint_off LITENDIAN*/  /* verilator lint_off INITIALDLY*/  

//Your Verilog/System Verilog Code Starts Here:
module Aishwarya_frequencyDivider ( clk,out_clk );

output out_clk;

input clk ;

reg [2:0]m;

initial m = 0;

always @ (negedge (clk)) begin
 m <= m + 1;
end

assign out_clk = m[2];


endmodule

//Top Module Code Starts here:
	module top(input logic clk, input logic reset, input logic [31:0] cyc_cnt, output logic passed, output logic failed);
		logic  out_clk;//output
//The $random() can be replaced if user wants to assign values
		Aishwarya_frequencyDivider Aishwarya_frequencyDivider(.out_clk(out_clk), .clk(clk));
	
\TLV
//Add \TLV here if desired                                     
\SV
endmodule
```
## Makerchip Plots
![image]()

## Netlists
![image]()
## NgSpice Plots
![image]()
![image]()

![image]()
![image]()
## GAW Plots
![image]()
## Steps to run generate NgVeri Model
1. Open eSim
2. Run NgVeri-Makerchip 
3. Add top level verilog file in Makerchip Tab
4. Click on NgVeri tab
5. Add dependency files
6. Click on Run Verilog to NgSpice Converter
7. Debug if any errors
8. Model created successfully
## Steps to run this project
1. Open a new terminal
2. Clone this project using the following command:</br>
```git clone https://github.com/Eyantra698Sumanto/XOR-XNOR-Gate.git ```</br>  ------------------------------------------
3. Change directory:</br>
```cd eSim_project_files/xor_xnor```</br>  -------------------------------------------------------------------
4. Run ngspice:</br>
```ngspice xor_xnor.cir.out```</br>
5. To run the project in eSim:

  - Run eSim</br>
  - Load the project</br>
  - Open eeSchema</br>
## Acknowlegdements
1. FOSSEE, IIT Bombay
2. Steve Hoover, Founder, Redwood EDA
3. Kunal Ghosh, Co-founder, VSD Corp. Pvt. Ltd. - kunalpghosh@gmail.com
4. Sumanto Kar, eSim Team, FOSSEE

## References
1. Ahmad, Nabihah & Hasan, Rezaul. (2011). A new design of XOR-XNOR gates for low power application. 10.1109/ICEDSA.2011.5959039. 
2. K. Ravali, N. R. Vijay, S. Jaggavarapu and R. Sakthivel, "Low power XOR gate design and its applications," 2017 Fourth International Conference on Signal Processing, Communication and Networking (ICSCN), 2017, pp. 1-4, doi: 10.1109/ICSCN.2017.8085699.
3. https://github.com/Eyantra698Sumanto/Two-in-One-Low-power-XOR-XNOR-Gate.git


