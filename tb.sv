`timescale 10ns/10ps

module tb();

   logic data0, data1;
   logic [1:0] sel;
   logic mux_out;

   mux_2x1 mux_i(.in0(data0),
                 .in1(data1),
                 .sel(sel),
                 .out(mux_out));

   initial begin
      data0 = 'h0;
      data1 = 'h0;
   end

   always
      #5ns data0 = ~data0;

   always
      #20ns data1 = ~data1;

   initial begin
      //Select data0 and wait #100
      sel = 'b0;
      #100ns;

      //Select data1 and wait #100
      sel = 'b1;
      #100ns;
		
		$finish();
   end

   initial begin
     $dumpfile ("waves.vcd");
     $dumpvars (1, tb);
   end
endmodule
