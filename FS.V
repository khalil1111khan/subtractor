module FS(
input a, b, bin,
  output diff, bout
);

  wire w1, w2, w3;

  // XOR gate for the difference
  assign w1 = a ^ b;
  assign diff = w1 ^ bin;

  // AND gate for borrow-out
  assign w2 = ~a & b;
  assign w3 = ~w1 & bin;
  assign bout = w2 | w3;

endmodule
