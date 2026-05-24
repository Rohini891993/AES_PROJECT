module aes_top(
input clk,
input rst,
input [127:0]plaintext,
input [127:0]key,
output [127:0]ciphertext
);
wire [127:0]ark_out;
wire [127:0]sr_out;
addroundkey u1(
.state (plaintext),
.roundkey (key),
.out (ark_out)
);
shiftrows u2(
.in(ark_out),
.out(sr_out)
);
assign ciphertext =sr_out;
endmodule
