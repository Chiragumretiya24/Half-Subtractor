// half subtractor tb

module half_subtractor_tb();

  reg a,b;
  wire difference,borrow;

  half_subtractor dut(.a(a),.b(b),.difference(difference),.borrow(borrow));

  initial begin
      $monitor($time,"a = %b, b = %b, difference = %b, borrow = %b",a,b,difference,borrow);
      
      a = 0; b = 0;
      #10;
      a = 0; b = 1;
      #10;
      a = 1; b = 0;
      #10;
      a = 1; b = 1;
      #10;
      $finish;

  end
endmodule

