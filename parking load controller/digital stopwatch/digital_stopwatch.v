module digital_stopwatch (
    input clk,
    input reset,
    input start_stop,
    output reg [3:0] count
);

    always @(posedge clk) begin

        if (reset) begin
            count <= 4'd0;
        end

        else if (start_stop) begin

            if (count == 4'd9)
                count <= 4'd0;
            else
                count <= count + 1;

        end

    end

endmodule