module aes_td();
reg clk;
reg rst;
reg [127:0]plaintext;
reg [127:0]key;
wire [127:0]ciphertext;
aes_top dut(
.clk(clk),
.rst(rst),
.plaintext(plaintext),
.key(key),
.ciphertext(ciphertext)
);
always#5 clk=-clk;
initial begin
clk=0;
rst=1;
plaintext=128'h00112233445566778899aabbccddeeff;
key=128'h000102030405060708090a0b0c0d0e0f;
#10 rst=0;
#100;
$display("ciphertext=%h",ciphertext);
$finish;
end
endmodule
