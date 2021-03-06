import Pufferfish

extension HuffmanEncoder {
    /// Generate a huffman encoder
    static var hpack: HuffmanEncoder = {
        return HuffmanEncoder(encodingTable: .hpack)
    }()
}

extension HuffmanDecoder {
    /// Generate a huffman decoder
    static func hpack() throws -> HuffmanDecoder {
        return try HuffmanDecoder(tree: HuffmanTree(encoded: .hpack))
    }
}

extension EncodingTable {
    /// Predefined HPACK Huffman tree
    ///
    /// Generated from: http://httpwg.org/specs/rfc7541.html#rfc.section.B
    static var hpack: EncodingTable = {
        var encodingTable = EncodingTable(reserving: 257)
        
        var count = 0
        
        func append(_ pair: Pair) {
            encodingTable.append(
                raw: .single(numericCast(count)),
                pair: pair
            )
            
            count = count + 1
        }
        
        append((0b11111111_11000, 13)) // 0
        append((0b11111111_11111111_1011000, 23))
        append((0b11111111_11111111_11111110_0010, 28))
        append((0b11111111_11111111_11111110_0011, 28))
        append((0b11111111_11111111_11111110_0100, 28))
        append((0b11111111_11111111_11111110_0101, 28))
        append((0b11111111_11111111_11111110_0110, 28))
        append((0b11111111_11111111_11111110_0111, 28))
        append((0b11111111_11111111_11111110_1000, 28))
        append((0b11111111_11111111_11101010, 24))
        append((0b11111111_11111111_11111111_111100, 30)) // 10
        append((0b11111111_11111111_11111110_1001, 28))
        append((0b11111111_11111111_11111110_1010, 28))
        append((0b11111111_11111111_11111111_111101, 30))
        append((0b11111111_11111111_11111110_1011, 28))
        append((0b11111111_11111111_11111110_1100, 28))
        append((0b11111111_11111111_11111110_1101, 28))
        append((0b11111111_11111111_11111110_1110, 28))
        append((0b11111111_11111111_11111110_1111, 28))
        append((0b11111111_11111111_11111111_0000, 28))
        append((0b11111111_11111111_11111111_0001, 28)) // 20
        append((0b11111111_11111111_11111111_0010, 28))
        append((0b11111111_11111111_11111111_111110, 30))
        append((0b11111111_11111111_11111111_0011, 28))
        append((0b11111111_11111111_11111111_0100, 28))
        append((0b11111111_11111111_11111111_0101, 28))
        append((0b11111111_11111111_11111111_0110, 28))
        append((0b11111111_11111111_11111111_0111, 28))
        append((0b11111111_11111111_11111111_1000, 28))
        append((0b11111111_11111111_11111111_1001, 28))
        append((0b11111111_11111111_11111111_1010, 28)) // 30
        append((0b11111111_11111111_11111111_1011, 28))
        append((0b010100, 6))
        append((0b11111110_00, 10))
        append((0b11111110_01, 10))
        append((0b11111111_1010, 12))
        append((0b11111111_11001, 13))
        append((0b010101, 6))
        append((0b11111000, 8))
        append((0b11111111_010, 11))
        append((0b11111110_10, 10)) // 40
        append((0b11111110_11, 10))
        append((0b11111001, 8))
        append((0b11111111_011, 11))
        append((0b11111010, 8))
        append((0b010110, 6))
        append((0b010111, 6))
        append((0b011000, 6))
        append((0b00000, 5))
        append((0b00001, 5))
        append((0b00010, 5)) // 50
        append((0b011001, 6))
        append((0b011010, 6))
        append((0b011011, 6))
        append((0b011100, 6))
        append((0b011101, 6))
        append((0b011110, 6))
        append((0b011111, 6))
        append((0b1011100, 7))
        append((0b11111011, 8))
        append((0b11111111_1111100, 15)) // 60
        append((0b100000, 6))
        append((0b11111111_1011, 12))
        append((0b11111111_00, 10))
        append((0b11111111_11010, 13))
        append((0b100001, 6))
        append((0b1011101, 7))
        append((0b1011110, 7))
        append((0b1011111, 7))
        append((0b1100000, 7))
        append((0b1100001, 7))
        append((0b1100010, 7))
        append((0b1100011, 7))
        append((0b1100100, 7))
        append((0b1100101, 7))
        append((0b1100110, 7))
        append((0b1100111, 7))
        append((0b1101000, 7))
        append((0b1101001, 7))
        append((0b1101010, 7))
        append((0b1101011, 7))
        append((0b1101100, 7))
        append((0b1101101, 7))
        append((0b1101110, 7))
        append((0b1101111, 7))
        append((0b1110000, 7))
        append((0b1110001, 7))
        append((0b1110010, 7))
        append((0b11111100, 8))
        append((0b1110011, 7))
        append((0b11111101, 8))
        append((0b11111111_11011, 13))
        append((0b11111111_11111110_000, 19))
        append((0b11111111_11100, 13))
        append((0b11111111_111100, 14))
        append((0b100010, 6))
        append((0b11111111_1111101, 15))
        append((0b00011, 5))
        append((0b100011, 6))
        append((0b00100, 5))
        append((0b100100, 6))
        append((0b00101, 5))
        append((0b100101, 6))
        append((0b100110, 6))
        append((0b100111, 6))
        append((0b00110, 5))
        append((0b1110100, 7))
        append((0b1110101, 7))
        append((0b101000, 6))
        append((0b101001, 6))
        append((0b101010, 6))
        append((0b00111, 5))
        append((0b101011, 6))
        append((0b1110110, 7))
        append((0b101100, 6))
        append((0b01000, 5))
        append((0b01001, 5))
        append((0b101101, 6))
        append((0b1110111, 7))
        append((0b1111000, 7))
        append((0b1111001, 7))
        append((0b1111010, 7))
        append((0b1111011, 7))
        append((0b11111111_1111110, 15))
        append((0b11111111_100, 11))
        append((0b11111111_111101, 14))
        append((0b11111111_11101, 13))
        append((0b11111111_11111111_11111111_1100, 28))
        append((0b11111111_11111110_0110, 20))
        append((0b11111111_11111111_010010, 22))
        append((0b11111111_11111110_0111, 20))
        append((0b11111111_11111110_1000, 20))
        append((0b11111111_11111111_010011, 22))
        append((0b11111111_11111111_010100, 22))
        append((0b11111111_11111111_010101, 22))
        append((0b11111111_11111111_1011001, 23))
        append((0b11111111_11111111_010110, 22))
        append((0b11111111_11111111_1011010, 23))
        append((0b11111111_11111111_1011011, 23))
        append((0b11111111_11111111_1011100, 23))
        append((0b11111111_11111111_1011101, 23))
        append((0b11111111_11111111_1011110, 23))
        append((0b11111111_11111111_11101011, 24))
        append((0b11111111_11111111_1011111, 23))
        append((0b11111111_11111111_11101100, 24))
        append((0b11111111_11111111_11101101, 24))
        append((0b11111111_11111111_010111, 22))
        append((0b11111111_11111111_1100000, 23))
        append((0b11111111_11111111_11101110, 24))
        append((0b11111111_11111111_1100001, 23))
        append((0b11111111_11111111_1100010, 23))
        append((0b11111111_11111111_1100011, 23))
        append((0b11111111_11111111_1100100, 23))
        append((0b11111111_11111110_11100, 21))
        append((0b11111111_11111111_011000, 22))
        append((0b11111111_11111111_1100101, 23))
        append((0b11111111_11111111_011001, 22))
        append((0b11111111_11111111_1100110, 23))
        append((0b11111111_11111111_1100111, 23))
        append((0b11111111_11111111_11101111, 24))
        append((0b11111111_11111111_011010, 22))
        append((0b11111111_11111110_11101, 21))
        append((0b11111111_11111110_1001, 20))
        append((0b11111111_11111111_011011, 22))
        append((0b11111111_11111111_011100, 22))
        append((0b11111111_11111111_1101000, 23))
        append((0b11111111_11111111_1101001, 23))
        append((0b11111111_11111110_11110, 21))
        append((0b11111111_11111111_1101010, 23))
        append((0b11111111_11111111_011101, 22))
        append((0b11111111_11111111_011110, 22))
        append((0b11111111_11111111_11110000, 24))
        append((0b11111111_11111110_11111, 21))
        append((0b11111111_11111111_011111, 22))
        append((0b11111111_11111111_1101011, 23))
        append((0b11111111_11111111_1101100, 23))
        append((0b11111111_11111111_00000, 21))
        append((0b11111111_11111111_00001, 21))
        append((0b11111111_11111111_100000, 22))
        append((0b11111111_11111111_00010, 21))
        append((0b11111111_11111111_1101101, 23))
        append((0b11111111_11111111_100001, 22))
        append((0b11111111_11111111_1101110, 23))
        append((0b11111111_11111111_1101111, 23))
        append((0b11111111_11111110_1010, 20))
        append((0b11111111_11111111_100010, 22))
        append((0b11111111_11111111_100011, 22))
        append((0b11111111_11111111_100100, 22))
        append((0b11111111_11111111_1110000, 23))
        append((0b11111111_11111111_100101, 22))
        append((0b11111111_11111111_100110, 22))
        append((0b11111111_11111111_1110001, 23))
        append((0b11111111_11111111_11111000_00, 26))
        append((0b11111111_11111111_11111000_01, 26))
        append((0b11111111_11111110_1011, 20))
        append((0b11111111_11111110_001, 19))
        append((0b11111111_11111111_100111, 22))
        append((0b11111111_11111111_1110010, 23))
        append((0b11111111_11111111_101000, 22))
        append((0b11111111_11111111_11110110_0, 25))
        append((0b11111111_11111111_11111000_10, 26))
        append((0b11111111_11111111_11111000_11, 26))
        append((0b11111111_11111111_11111001_00, 26))
        append((0b11111111_11111111_11111011_110, 27))
        append((0b11111111_11111111_11111011_111, 27))
        append((0b11111111_11111111_11111001_01, 26))
        append((0b11111111_11111111_11110001, 24))
        append((0b11111111_11111111_11110110_1, 25))
        append((0b11111111_11111110_010, 19))
        append((0b11111111_11111111_00011, 21))
        append((0b11111111_11111111_11111001_10, 26))
        append((0b11111111_11111111_11111100_000, 27))
        append((0b11111111_11111111_11111100_001, 27))
        append((0b11111111_11111111_11111001_11, 26))
        append((0b11111111_11111111_11111100_010, 27))
        append((0b11111111_11111111_11110010, 24))
        append((0b11111111_11111111_00100, 21))
        append((0b11111111_11111111_00101, 21))
        append((0b11111111_11111111_11111010_00, 26))
        append((0b11111111_11111111_11111010_01, 26))
        append((0b11111111_11111111_11111111_1101, 28))
        append((0b11111111_11111111_11111100_011, 27))
        append((0b11111111_11111111_11111100_100, 27))
        append((0b11111111_11111111_11111100_101, 27))
        append((0b11111111_11111110_1100, 20))
        append((0b11111111_11111111_11110011, 24))
        append((0b11111111_11111110_1101, 20))
        append((0b11111111_11111111_00110, 21))
        append((0b11111111_11111111_101001, 22))
        append((0b11111111_11111111_00111, 21))
        append((0b11111111_11111111_01000, 21))
        append((0b11111111_11111111_1110011, 23))
        append((0b11111111_11111111_101010, 22))
        append((0b11111111_11111111_101011, 22))
        append((0b11111111_11111111_11110111_0, 25))
        append((0b11111111_11111111_11110111_1, 25))
        append((0b11111111_11111111_11110100, 24))
        append((0b11111111_11111111_11110101, 24))
        append((0b11111111_11111111_11111010_10, 26))
        append((0b11111111_11111111_1110100, 23))
        append((0b11111111_11111111_11111010_11, 26))
        append((0b11111111_11111111_11111100_110, 27))
        append((0b11111111_11111111_11111011_00, 26))
        append((0b11111111_11111111_11111011_01, 26))
        append((0b11111111_11111111_11111100_111, 27))
        append((0b11111111_11111111_11111101_000, 27))
        append((0b11111111_11111111_11111101_001, 27))
        append((0b11111111_11111111_11111101_010, 27))
        append((0b11111111_11111111_11111101_011, 27))
        append((0b11111111_11111111_11111111_1110, 28))
        append((0b11111111_11111111_11111101_100, 27))
        append((0b11111111_11111111_11111101_101, 27))
        append((0b11111111_11111111_11111101_110, 27))
        append((0b11111111_11111111_11111101_111, 27))
        append((0b11111111_11111111_11111110_000, 27))
        append((0b11111111_11111111_11111011_10, 26))
        
        return encodingTable
    }()
}
