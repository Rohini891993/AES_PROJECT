module addroundkey(
input [127:0] state,
input[127:0] roundkey,
output[127:0] out
);
assign out = state^roundkey;
endmodule
