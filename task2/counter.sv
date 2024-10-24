module counter #(
    parameter WIDTH = 8
)(
    // interface signals 
    input logic         clk,        //clock
    input logic         rst,        //reset
    input logic         en,         //counter enable 
    output logic [WIDTH-1:0] count  // count output
);

always_ff @ (posedge clk or posedge rst)
    if (rst) count <= {WIDTH{1'b0}};
    else count <= en ? count + 1: count - 1;

endmodule
