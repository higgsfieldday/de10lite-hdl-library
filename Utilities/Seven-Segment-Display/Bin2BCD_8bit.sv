//============================================================
// Binary to Binary Coded Decimal Converter for 8-bit Input
// [19:16]=hundreds
// [15:12]=tens
// [11:8]=ones
// [7:0]=binary working bits
//============================================================
module Bin2BCD_8bit (
    input  logic [7:0] bin,
    output logic [3:0] hundreds,
    output logic [3:0] tens,
    output logic [3:0] ones
);
    integer i;
    logic [19:0] shift; 

    always_comb begin
        // 1) init
        shift = 20'd0;
        shift[7:0] = bin;

        // 2) run 8 cycles of "add 3 if >=5, then shift"
        for (i = 0; i < 8; i++) begin
            // correct current BCD digits before shifting
            if (shift[11:8] >= 5)
                shift[11:8] = shift[11:8] + 4'd3; // ones
            if (shift[15:12] >= 5)
                shift[15:12] = shift[15:12] + 4'd3; // tens
            if (shift[19:16] >= 5)
                shift[19:16] = shift[19:16] + 4'd3; // hundreds

            // shift left by 1
            shift = shift << 1;
        end

        // 3) assign outputs
        hundreds = shift[19:16];
        tens     = shift[15:12];
        ones     = shift[11:8];
    end
endmodule
//============================
// End of File
//============================
