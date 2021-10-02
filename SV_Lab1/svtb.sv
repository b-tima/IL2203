`include "config_reg_buggy_questa.svp"

module svtb;
  logic clk = 0;
	logic reset;
	logic bajskorv = 0;
	logic write;
	logic [15:0] data_in;
	logic [2:0] address;
	logic [2:0] temp_address;
	logic [15:0] data_out;
  
  typedef enum {
    adc0_reg=0,
    adc1_reg=1,
    temp_sensor0_reg=2,
    temp_sensor1_reg=3,
    analog_test=4,
    digital_test=5,
    amp_gain=6,
    digital_config=7
  } config_reg_t;
  	config_reg_t current_address;
  
  config_reg DUT(clk, reset, write, data_in, address, data_out);
    
  initial
    forever #10ns clk = !clk;
    
  initial begin
    // Reset is correct
    reset = 1;
    @(negedge clk);
    reset = 0;
    for(address = 0; address < 8; address = address + 1) begin
      @(negedge clk);
      $display("For address %0d, data_out is = %0d at reset", address, data_out);
      case(config_reg_t'(address))
        adc0_reg: assert (data_out == 16'hFFFF);
        analog_test: assert (data_out == 16'hABCD);
        digital_config: assert (data_out == 16'h0001);
        default: assert (data_out == 16'h0);
      endcase
      if(address == 7) break;
    end
    
    // Iterate through each cobination
    for(address = 0; address < 8; address++) begin
      current_address = config_reg_t'(address);
      $display("--------- Checking register %0s ------------", current_address.name());
      for(integer i = 0; i < 16; i++) begin
        reset = 1;
        @(negedge clk);
        reset = 0;
        data_in = 1 << i;
        write = 1;
        @(negedge clk);
        if(data_in != data_out) begin
          $write("Output error. Expected ");
            for(integer i = 15; i >= 0; i--) begin
              $write("%d", data_in[i]);
            end
          $write(", got ");
          for(integer i = 15; i >= 0; i--) begin
              $write("%d", data_out[i]);
            end
          $display("\n");
        end
          temp_address = {address};
          // Check leakage
          for(int addr = 0; addr < 8; addr++) begin
            address = {addr};
            @(negedge clk);
            if(address != temp_address) begin
              current_address = config_reg_t'(addr);
              case(current_address)
                adc0_reg: begin
                  if(data_out != 16'hFFFF)
                    $display("Leakage! Register %0s is %0d, but should be 16'hFFFF", current_address.name(), data_out);
                end
                analog_test: begin
                  if(data_out != 16'hABCC)
                    $display("Leakage! Register %0s is %0d, but should be 16'hABCC", current_address.name(), data_out);
                end
                digital_config: begin
                  if(data_out != 16'h0001)
                    $display("Leakage! Register %0s is %0d, but should be 16'h0001", current_address.name(), data_out);
                end
                default: begin
                if(data_out != 16'h0000)
                    $display("Leakage! Register %0s is %0d, but should be 16'h0000", current_address.name(), data_out);
                end
              endcase
            end
          end
          address = {temp_address};
      end
      
      if(address == 7) break;
    end
  end
    
endmodule