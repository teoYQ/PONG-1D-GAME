/*
   This file was generated automatically by the Mojo IDE version B1.3.6.
   Do not edit this file directly. Instead edit the original Lucid source.
   This is a temporary file and any changes made to it will be destroyed.
*/

module stateCounter_7 (
    input clk,
    input rst,
    input btn,
    input btn1,
    input btn2,
    input btn3,
    output reg inc_state,
    output reg dec_state,
    output reg inc1_state,
    output reg dec1_state,
    output reg updateball,
    input [27:0] ballspd,
    output reg updatespd
  );
  
  
  
  reg [27:0] M_stateCounter_d, M_stateCounter_q = 1'h0;
  
  reg [27:0] M_stateCounter1_d, M_stateCounter1_q = 1'h0;
  
  reg [27:0] M_stateCounter2_d, M_stateCounter2_q = 1'h0;
  
  reg [27:0] M_stateCounter3_d, M_stateCounter3_q = 1'h0;
  
  reg [27:0] M_gameball_d, M_gameball_q = 1'h0;
  
  reg [4:0] M_time_d, M_time_q = 1'h0;
  
  reg [31:0] M_limit_d, M_limit_q = 1'h0;
  
  always @* begin
    M_limit_d = M_limit_q;
    M_stateCounter3_d = M_stateCounter3_q;
    M_time_d = M_time_q;
    M_gameball_d = M_gameball_q;
    M_stateCounter_d = M_stateCounter_q;
    M_stateCounter2_d = M_stateCounter2_q;
    M_stateCounter1_d = M_stateCounter1_q;
    
    M_time_d = 5'h11;
    M_gameball_d = M_gameball_q + 1'h1;
    if (M_gameball_q == ballspd) begin
      M_gameball_d = 1'h0;
      updateball = 1'h1;
    end else begin
      updateball = 1'h0;
    end
    if (M_limit_q == 26'h2faf080) begin
      M_limit_d = 1'h0;
      updatespd = 1'h1;
    end else begin
      updatespd = 1'h0;
    end
    if (btn == 1'h1) begin
      inc_state = M_stateCounter_q[(M_time_q)*1+0-:1];
      M_stateCounter_d = M_stateCounter_q + 1'h1;
      if (M_stateCounter_q[(M_time_q)*1+0-:1] == 1'h1) begin
        M_stateCounter_d[(M_time_q)*1+0-:1] = 1'h0;
      end
    end else begin
      M_stateCounter_d = 1'h0;
      inc_state = M_stateCounter_q[0+0-:1];
    end
    if (btn1 == 1'h1) begin
      dec_state = M_stateCounter1_q[(M_time_q)*1+0-:1];
      M_stateCounter1_d = M_stateCounter1_q + 1'h1;
      if (M_stateCounter1_q[(M_time_q)*1+0-:1] == 1'h1) begin
        M_stateCounter1_d[(M_time_q)*1+0-:1] = 1'h0;
      end
    end else begin
      M_stateCounter1_d = 1'h0;
      dec_state = M_stateCounter1_q[0+0-:1];
    end
    if (btn2 == 1'h1) begin
      inc1_state = M_stateCounter2_q[(M_time_q)*1+0-:1];
      M_stateCounter2_d = M_stateCounter2_q + 1'h1;
      if (M_stateCounter2_q[(M_time_q)*1+0-:1] == 1'h1) begin
        M_stateCounter2_d[(M_time_q)*1+0-:1] = 1'h0;
      end
    end else begin
      M_stateCounter2_d = 1'h0;
      inc1_state = M_stateCounter2_q[0+0-:1];
    end
    if (btn3 == 1'h1) begin
      dec1_state = M_stateCounter3_q[(M_time_q)*1+0-:1];
      M_stateCounter3_d = M_stateCounter3_q + 1'h1;
      if (M_stateCounter3_q[(M_time_q)*1+0-:1] == 1'h1) begin
        M_stateCounter3_d[(M_time_q)*1+0-:1] = 1'h0;
      end
    end else begin
      M_stateCounter3_d = 1'h0;
      dec1_state = M_stateCounter3_q[0+0-:1];
    end
  end
  
  always @(posedge clk) begin
    if (rst == 1'b1) begin
      M_stateCounter1_q <= 1'h0;
    end else begin
      M_stateCounter1_q <= M_stateCounter1_d;
    end
  end
  
  
  always @(posedge clk) begin
    if (rst == 1'b1) begin
      M_stateCounter_q <= 1'h0;
    end else begin
      M_stateCounter_q <= M_stateCounter_d;
    end
  end
  
  
  always @(posedge clk) begin
    if (rst == 1'b1) begin
      M_time_q <= 1'h0;
    end else begin
      M_time_q <= M_time_d;
    end
  end
  
  
  always @(posedge clk) begin
    if (rst == 1'b1) begin
      M_stateCounter2_q <= 1'h0;
    end else begin
      M_stateCounter2_q <= M_stateCounter2_d;
    end
  end
  
  
  always @(posedge clk) begin
    if (rst == 1'b1) begin
      M_stateCounter3_q <= 1'h0;
    end else begin
      M_stateCounter3_q <= M_stateCounter3_d;
    end
  end
  
  
  always @(posedge clk) begin
    if (rst == 1'b1) begin
      M_gameball_q <= 1'h0;
    end else begin
      M_gameball_q <= M_gameball_d;
    end
  end
  
  
  always @(posedge clk) begin
    if (rst == 1'b1) begin
      M_limit_q <= 1'h0;
    end else begin
      M_limit_q <= M_limit_d;
    end
  end
  
endmodule