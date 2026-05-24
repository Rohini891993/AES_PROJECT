module key_expansion(
input[127:0]key,
output[127:0]roundkey
);
assign roundkey =key;
endmodule
