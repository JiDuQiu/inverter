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
	$dumpfile("test.vcd");//通过$dumpfile指定要保存仿真波形数据需要存储到的文件，指定保存在当前目录中test.vcd文件中（GTKWave还支持LXT,LXT2,VZT,FST和GHW等类型文件）
	$dumpvars(0, inv_tb); //通过$dumpvars指定要保存仿真波形数据的信号，这里指定为inv_tb模块（即本模块）之下及其子模块中的所有信号，当然这个例子中没有子模块，所以仿真数据被存储的为本模块中仅有的两个信号：clk和rst_n
end

endmodule
