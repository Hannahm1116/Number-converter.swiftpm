import SwiftUI
import Foundation

struct ContentView: View {
    @State private var decimalInput = ""
    @State private var decimalOutput = ""
    @State private var binaryInput = ""
    @State private var binaryOutput = ""
    @State private var hexadecimalInput = ""
    @State private var hexadecimalOutput = ""
    
    var body: some View {
        VStack {
            Text("Number Converters")
                .font(.title)
                .padding()
            
            // Decimal to Binary
            Text("Decimal to Binary Converter")
                .font(.title)
                .padding()
            
            TextField("Enter decimal number", text: $decimalInput)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .padding()
            
            Button("Convert") {
                binaryOutput = convertDecimalToBinary(decimalInput)
            }
            .padding()
            
            Text("Binary Result: \(binaryOutput)")
                .font(.title)
                .padding()
            
            // Binary to Decimal
            Text("Binary to Decimal Converter")
                .font(.title)
                .padding()
            
            TextField("Enter binary number", text: $binaryInput)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .padding()
            
            Button("Convert") {
                decimalOutput = convertBinaryToDecimal(binaryInput)
            }
            .padding()
            
            Text("Decimal Result: \(decimalOutput)")
                .font(.title)
                .padding()
            
            // Decimal to Hexadecimal
            Text("Decimal to Hexadecimal Converter")
                .font(.title)
                .padding()
            
            TextField("Enter decimal number", text: $decimalInput)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .padding()
            
            Button("Convert") {
                hexadecimalOutput = convertDecimalToHexadecimal(decimalInput)
            }
            .padding()
            
            Text("Hexadecimal Result: \(hexadecimalOutput)")
                .font(.title)
                .padding()
            
            // Hexadecimal to Binary
            Text("Hexadecimal to Binary Converter")
                .font(.title)
                .padding()
            
            TextField("Enter hexadecimal number", text: $hexadecimalInput)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .padding()
            
            Button("Convert") {
                binaryOutput = convertHexadecimalToBinary(hexadecimalInput)
            }
            .padding()
            
            Text("Binary Result: \(binaryOutput)")
                .font(.title)
                .padding()
        }
    }
    
    // Conversion functions
    func convertDecimalToBinary(_ decimal: String) -> String {
        if let decimalValue = Int(decimal) {
            return String(decimalValue, radix: 2)
        } else {
            return "Invalid Input"
        }
    }
    
    func convertBinaryToDecimal(_ binary: String) -> String {
        if let decimalValue = Int(binary, radix: 2) {
            return String(decimalValue)
        } else {
            return "Invalid Input"
        }
    }
    
    func convertDecimalToHexadecimal(_ decimal: String) -> String {
        if let decimalValue = Int(decimal) {
            return String(decimalValue, radix: 16).uppercased()
        } else {
            return "Invalid Input"
        }
    }
    
    func convertHexadecimalToBinary(_ hexadecimal: String) -> String {
        if let decimalValue = Int(hexadecimal, radix: 16) {
            return String(decimalValue, radix: 2)
        } else {
            return "Invalid Input"
        }
    }
}

