module mux_2x1(

   input logic in0, in1, sel,
   output logic out);

   always_comb
      if (sel == 'h0)
         out <= in0;
      else
         out <= in1;

endmodule

