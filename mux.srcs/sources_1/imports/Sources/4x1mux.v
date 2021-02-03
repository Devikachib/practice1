module counter (input clk,      // Declare input port for the clock to allow counter to count up  
                  input rstn,              // Declare input port for the reset to allow the counter to be reset to 0 when required  
                  output reg[3:0] out);    // Declare 4-bit output port to get the counter values  
  
 // This always block will be triggered at the rising edge of clk (0->1)  
  // Once inside this block, it checks if the reset is 0, then change out to zero   
  // If reset is 1, then the design should be allowed to count up, so increment the counter   
  
  always @ (posedge clk) begin  
    if (! rstn)  
      out <= 0;  
    else  
      out <= out + 1;  
  end  
endmodule  
