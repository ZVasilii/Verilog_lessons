module dummy();

wire a = 1;

initial begin
    $dumpvars;
    $display("Hello, World!");
    #10 $finish;
end

endmodule
