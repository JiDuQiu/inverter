//------testbench of inv-------
`timescale 1ns/10ps

module inv_tb;
reg		aa;
wire		yy;


inv	inv(
		.A(aa),
		.Y(yy)
		);
initial begin
		aa<=0;
	#10	aa<=1;
	#10     aa<=0;
	#10     aa<=1;
	#10 $stop;
end

initial begin
	$dumpfile("test.vcd");
	$dumpvars(0, inv_tb); 
end

endmodule
