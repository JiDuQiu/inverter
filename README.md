# inverter
这是一个简单反相器，Verilog代码，保护测试代码。  

使用Linux下的iverilog进行编译和运行；  

$ iverilog -o wave test_fxq.v tb_test_fxq.v  

$ ./testlinshi

然后使用gtkwave打开test.vcd文件观察波形。
