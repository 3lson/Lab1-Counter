module counter #(
    parameter WIDTH = 8
)(
    // Interface signals 
    input logic         clk,        // Clock
    input logic         rst,        // Reset
    input logic         en,         // Counter enable 
    output logic [WIDTH-1:0] count  // Count output
);

always_ff @ (posedge clk, posedge rst) begin
    if (rst) 
        count <= {WIDTH{1'b0}}; // Reset count
    else if (en) 
        count <= count + 1; // Increment count when enabled
end

endmodule
