module CPU(

input clk,
input reset,
input enable,
output finish

);

//define busses

wire [15:0] address_bus;
wire [7:0] data_in_bus;
wire [7:0] data_out_bus;



wire write;
wire read;


wire finish;
wire enable;



DRAM DRAM(

.addr(address_bus),
.din(data_in_bus),
.finish(finish),
.read(read),
.write(write),
.clk(clk),
.dout(data_out_bus)

);



Processor Processor(

.din(data_out_bus),
.enable(enable),
.clk(clk),
.dout(data_in_bus),
.addr_out(address_bus),
.finish(finish),
.write(write),
.read(read)

);


endmodule