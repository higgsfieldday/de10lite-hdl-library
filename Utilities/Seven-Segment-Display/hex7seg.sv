/*
============================================================
 Module: Hex7seg
 Purpose: Convert Hexadecimal digit (0–15) to 7-segment pattern
 Active-Low Segments: 0 = ON, 1 = OFF
 Segment Order: {0, 1, 2, 3, 4, 5, 6} = [6:0]
 Additional Decimal Point for Negative Sign: [7]
=======================================================================
 Diagram of 7-segment display with decimal point:
            0
        ---------
        |       |
      5 |       | 1
        |   6   |
        ---------
        |       |
      4 |       | 2
        |       |        _
        ---------     7 |_| dp 
            3   
============================================================
*/
module Hex7seg(
    input  logic [3:0] DecNum,     // Decimal digit 0–9
    input  logic neg,              // Negative indicator
    output logic [7:0] HexSeg,     // 7-segment output (active-low)
);
    always_comb begin
        // Default: all segments OFF
        HexSeg = 8'b11111111;

        unique case (DecNum)
            4'h0: HexSeg[6:0] = 7'b1000000; // 0
            4'h1: HexSeg[6:0] = 7'b1111001; // 1
            4'h2: HexSeg[6:0] = 7'b0100100; // 2
            4'h3: HexSeg[6:0] = 7'b0110000; // 3
            4'h4: HexSeg[6:0] = 7'b0011001; // 4
            4'h5: HexSeg[6:0] = 7'b0010010; // 5
            4'h6: HexSeg[6:0] = 7'b0000010; // 6
            4'h7: HexSeg[6:0] = 7'b1111000; // 7
            4'h8: HexSeg[6:0] = 7'b0000000; // 8
            4'h9: HexSeg[6:0] = 7'b0010000; // 9
            4'hA: HexSeg[6:0] = 7'b0001000; // 10 (A)
            4'hB: HexSeg[6:0] = 7'b0000011; // 11 (b)
            4'hC: HexSeg[6:0] = 7'b1000110; // 12 (C)
            4'hD: HexSeg[6:0] = 7'b0110000; // 13 (d)
            4'hE: HexSeg[6:0] = 7'b0000110; // 14 (E)
            4'hF: HexSeg[6:0] = 7'b0001110; // 15 (F)
            default: HexSeg = 8'b11111111; // blank
        endcase
    end

    always_comb begin
        // Handle negative sign
        if (neg) begin
            HexSeg[7] = 1'b0; // Turn ON the negative sign segment (dp)
        end else begin
            HexSeg[7] = 1'b1; // Turn OFF the negative sign segment (dp)
        end
    end
endmodule