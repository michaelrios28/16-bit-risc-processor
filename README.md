# 16-bit-risc-processor
>A 16-bit Reduced Instruction Set Computing(RISC) processor designed using the Verilog harware description language(HDL). The design was implemented on a Nexys 4 DDR board using the Xilinx Artix-7 Field Programabble Gate Array(FPGA). The processor is capable of fetching and executing a set of 16-bit machine instructions. 

#### Memory Structure
* 256 x 16 address space
* Each memory location contains one 16-bit word
#### Processor Register Set
* Eight 16-bit integer registers (R0, R1, R2, R3, R4, R5, R6, R7) 
* 16-bit program counter (PC)
* Flags Register (N, Z, C) 
#### Data Types 
* 16-bit word signed integer (-32768 => 32767) 
#### Addressing Modes 
1. Immediate 
2. Register 
3. Register Indirect 
4. PC relative

### Schematic:
![](301_RISC_Processor--Data_and_Control_Paths_Diagram.jpg)
