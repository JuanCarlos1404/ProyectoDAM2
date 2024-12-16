//
//  CustomTextField.swift
//  Proyecto
//
//  Created by DAMII on 15/12/24.
//

import SwiftUI

struct CustomTextField : View {
    let placeholder: String
    @Binding var text: String
    @Binding var number: Int16
    @Binding var formato: String 
    
    var body: some View {
        VStack {}
        /*
        if (formato == "String") {
            TextField(placeholder, text: $text)
                .padding()
                .background(Color(.systemGray6))
                .cornerRadius(8)
                .padding(.horizontal)
        } else {
            TextField(placeholder, text: $number, format: .number)
                .padding()
                .background(Color(.systemGray6))
                .cornerRadius(8)
                .padding(.horizontal)
        }*/
    }
}
