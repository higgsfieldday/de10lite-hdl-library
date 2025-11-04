//============================================================
// Module: Dec7seg
// Purpose: Convert decimal digit (0–9) to 7-segment pattern
// Active-Low Segments: 0 = ON, 1 = OFF
// Segment Order: {a, b, c, d, e, f, g} = [6:0]
//============================================================
module Dec7seg(
    input  logic [3:0] DecNum,     // Decimal digit 0–9
    output logic [6:0] HexSeg      // 7-segment output (active-low)
);
    always_comb begin
        // Default: all segments OFF
        HexSeg = 7'b1111111;

        unique case (DecNum)
            4'd0: HexSeg = 7'b1000000; // 0
            4'd1: HexSeg = 7'b1111001; // 1
            4'd2: HexSeg = 7'b0100100; // 2
            4'd3: HexSeg = 7'b0110000; // 3
            4'd4: HexSeg = 7'b0011001; // 4
            4'd5: HexSeg = 7'b0010010; // 5
            4'd6: HexSeg = 7'b0000010; // 6
            4'd7: HexSeg = 7'b1111000; // 7
            4'd8: HexSeg = 7'b0000000; // 8
            4'd9: HexSeg = 7'b0010000; // 9
            default: HexSeg = 7'b1111111; // blank
        endcase
    end

endmodule
//============================
// End of File
//============================
