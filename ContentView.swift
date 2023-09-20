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
        guard let decimalValue = Int(decimal) else {
            return "Invalid Input"
        }
        return String(decimalValue, radix: 2)
    }
    
    func convertBinaryToDecimal(_ binary: String) -> String {
        guard let decimalValue = Int(binary, radix: 2) else {
            return "Invalid Input"
        }
        return String(decimalValue)
    }
    
    func convertDecimalToHexadecimal(_ decimal: String) -> String {
        guard let decimalValue = Int(decimal) else {
            return "Invalid Input"
        }
        return String(decimalValue, radix: 16).uppercased()
    }
    
    func convertHexadecimalToBinary(_ hexadecimal: String) -> String {
        guard let decimalValue = Int(hexadecimal, radix: 16) else {
            return "Invalid Input"
        }
        return String(decimalValue, radix: 2)
    }
}

@main
struct NumberConvertersApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}

