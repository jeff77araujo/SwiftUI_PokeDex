//
//  CustomTextfield.swift
//  Pokedex
//
//  Created by Mac do JEFF on 22/08/23.
//

import SwiftUI

struct CustomTextfield: View {
    
    var placeholder: String
    @Binding var bind: String
    var isSecure = false
    
    @Environment(\.colorScheme) var colorScheme
    
    var body: some View {
        Group {
            if isSecure {
                SecureField(placeholder, text: $bind)
            } else {
                TextField(placeholder, text: $bind)
            }
        }
        .fontWeight(.bold)
        .frame(height: 50)
        .padding(.horizontal)
        .background {
            Capsule()
                .stroke(colorScheme == .dark ? .white : .black, lineWidth: 2)
        }
        
    }
}

struct CustomTextfield_Previews: PreviewProvider {
    static var previews: some View {
        CustomTextfield(placeholder: "Digite seu e-mail", bind: .constant("test@email.com"))
    }
}
