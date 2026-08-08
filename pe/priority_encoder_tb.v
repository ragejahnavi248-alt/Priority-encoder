`timescale 1ns/1ps

module priority_encoder_tb;

reg D3,D2,D1,D0;

wire Y1,Y0,Valid;

priority_encoder uut(
.D3(D3),
.D2(D2),
.D1(D1),
.D0(D0),
.Y1(Y1),
.Y0(Y0),
.Valid(Valid)
);

initial begin

$dumpfile("priority_encoder.vcd");
$dumpvars(0,priority_encoder_tb);

$display("D3 D2 D1 D0 | Y1 Y0 Valid");

D3=0; D2=0; D1=0; D0=0;
#10;

D3=0; D2=0; D1=0; D0=1;
#10;

D3=0; D2=0; D1=1; D0=0;
#10;

D3=0; D2=1; D1=0; D0=0;
#10;

D3=1; D2=0; D1=0; D0=0;
#10;

D3=1; D2=1; D1=1; D0=1;
#10;

$finish;

end

initial begin
$monitor("%b  %b  %b  %b | %b  %b   %b",
D3,D2,D1,D0,Y1,Y0,Valid);
end

endmodule