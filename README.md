# 4_1_Multiplexer
# EXP NO: 1.A SIMULATION AND IMPLEMENTATION OF 4:1 MULTIPLEXER
# AIM
To design and simulate a 4:1 Multiplexer (MUX) using Verilog HDL in four different modeling styles—Gate-Level, Data Flow, Behavioral, and Structural—and to verify its functionality through a testbench using the Vivado 2023.1 simulation environment. The experiment aims to understand how different abstraction levels in Verilog can be used to describe the same digital logic circuit and analyze their performance.

# APPARATUS REQUIRED
Vivado 2023.1

# Procedure
1.Open Vivado 2023.1.
2.Create a New RTL Project and give a name (e.g., Mux4_to_1).
3.Add/create your Verilog files and testbench.
4.Select an FPGA part (e.g., xc7a35ticsg324-1L).
5.Run Synthesis to check for errors.
6.Run Simulation → Run Behavioral Simulation.
7.Observe the waveforms of inputs and outputs.
8.Adjust simulation time if needed (e.g., 1000ns).
9.Save the project and take screenshots of results.
10.Close simulation.

# Logic Diagram

<img width="614" height="424" alt="Screenshot 2026-02-11 195225" src="https://github.com/user-attachments/assets/03cabe3f-914c-4163-bea7-2ba5257ed5a7" />


# Truthtable 

<img width="496" height="376" alt="Screenshot 2026-02-11 194234" src="https://github.com/user-attachments/assets/3530b20d-cc75-480c-bc14-d10b21a36376" />


# Verilog Code
4:1 MUX Gate-Level Implementation
```
// Gate Level Modelling - Skeleton
module mux4_gate (
    input  wire I0, I1, I2, I3,
    input  wire S0, S1,
    output wire Y
);
    // Declare internal wires

    // Write NOT gates

    // Write AND gates

    // Write OR gate

endmodule
```
4:1 MUX Gate-Level Implementation- Testbench
```
// Testbench Skeleton
`timescale 1ns/1ps
module tb_mux4_gate;

    // Declare testbench signals
    reg I0, I1, I2, I3;
    reg S0, S1;
    wire Y;

    // Instantiate DUT
    mux4_gate uut (
        .I0(I0), .I1(I1), .I2(I2), .I3(I3),
        .S0(S0), .S1(S1),
        .Y(Y)
    );

    initial begin
        // Initialize inputs

        // Apply test cases

        // Stop simulation
        #10 $stop;
    end

endmodule
```
# Simulated Output Gate Level Modelling
______ Here Paste the Simulated output ___________

4:1 MUX Data flow Modelling
```
// Dataflow Modelling - Skeleton
module mux4_dataflow (
    input  wire I0, I1, I2, I3,
    input  wire S0, S1,
    output wire Y
);
    // Write assign statement using operators

endmodule
```
4:1 MUX Data flow Modelling- Testbench
```
// Testbench Skeleton
`timescale 1ns/1ps
module tb_mux4_dataflow;

    // Declare testbench signals
    reg I0, I1, I2, I3;
    reg S0, S1;
    wire Y;

    // Instantiate DUT
    mux4_dataflow uut (
        .I0(I0), .I1(I1), .I2(I2), .I3(I3),
        .S0(S0), .S1(S1),
        .Y(Y)
    );

    initial begin
        // Initialize inputs

        // Apply test cases

        // Stop simulation
        #10 $stop;
    end

endmodule
```
# Simulated Output Dataflow Modelling
_______ Here Paste the Simulated output ___________

4:1 MUX Behavioral Implementation
```
module mux4_to_1_behavioral (
    input wire A,
    input wire B,
    input wire C,
    input wire D,
    input wire S0,
    input wire S1,
    output reg Y
);
    always @(*) begin
        
    end
endmodule
```
#4:1 MUX Behavioral Modelling- Testbench
```
// Testbench Skeleton
`timescale 1ns/1ps
module tb_mux4_behavioral;

    // Declare testbench signals
    reg I0, I1, I2, I3;
    reg S0, S1;
    wire Y;

    // Instantiate DUT
    mux4_behavioral uut (
        .I0(I0), .I1(I1), .I2(I2), .I3(I3),
        .S0(S0), .S1(S1),
        .Y(Y)
    );

    initial begin
        // Initialize inputs

        // Apply test cases

        // Stop simulation
        #10 $stop;
    end

endmodule
```
# Simulated Output Behavioral Modelling
_______ Here Paste the Simulated output ___________

#4:1 MUX Structural Implementation
```
module mux2_to_1 (
    input wire A,
    input wire B,
    input wire S,
    output wire Y
);
    assign Y = S ? B : A;
endmodule

module mux4_to_1_structural (
    input wire A,
    input wire B,
    input wire C,
    input wire D,
    input wire S0,
    input wire S1,
    output wire Y
);
```
# Testbench Implementation
```
`timescale 1ns / 1ps

module mux4_to_1_tb;
    reg A, B, C, D, S0, S1;
    wire Y_gate, Y_dataflow, Y_behavioral, Y_structural;

    

    initial begin
        A = 0; B = 0; C = 0; D = 0; S0 = 0; S1 = 0;

      
        #10 $stop;
    end

   
    end
endmodule
```
# Simulated Output Structural Modelling
_______ Here Paste the Simulated output ___________

# CONCLUSION
In this experiment, a 4:1 Multiplexer was successfully designed and simulated using Verilog HDL across four different modeling styles: Gate-Level, Data Flow, Behavioral, and Structural.The simulation results verified the correct functionality of the MUX, with all implementations producing identical outputs for the given input conditions.



endmodule
