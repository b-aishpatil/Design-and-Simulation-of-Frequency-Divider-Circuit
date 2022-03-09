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
![image]()
## Makerchip
```


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


