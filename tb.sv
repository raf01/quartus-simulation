module tb();

logic data0, data1;
logic [1:0]sel;
logic mux_out;

mux_2x1 mux_test (.in0(data0), .in(data1), .sel(sel), .out(mux_out));

initial
begin
	data0 = 'h0;
	data1 = 'h0;
end

always
	#5 data0 <= ~data0;
	
always
	#20 data1 <= ~data1;
	
initial begin
	sel = 'b0;
	#100
	
	sel = 'b1;
	#100
endmodule
	