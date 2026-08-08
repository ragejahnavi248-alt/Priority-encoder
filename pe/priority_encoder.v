module priority_encoder(
input D3,
input D2,
input D1,
input D0,
output reg Y1,
output reg Y0,
output reg Valid
);

always @(*) begin

if(D3) begin
Y1=1;
Y0=1;
Valid=1;
end

else if(D2) begin
Y1=1;
Y0=0;
Valid=1;
end

else if(D1) begin
Y1=0;
Y0=1;
Valid=1;
end

else if(D0) begin
Y1=0;
Y0=0;
Valid=1;
end

else begin
Y1=0;
Y0=0;
Valid=0;
end

end

endmodule