//
//  CustomTextfieldAula.swift
//  Pokedex
//
//  Created by Mac do JEFF on 22/08/23.
//

import SwiftUI

struct CustomTextfieldAula: View {
    
    var placeholder: String
    @Binding var bind: String
    var isSecure = false
    
    var body: some View {
        Group {
            if isSecure {
                SecureField(placeholder, text: $bind)
            } else {
                TextField(placeholder, text: $bind)
            }
        }
        .font(.title2)
        .fontWeight(.bold)
        .foregroundColor(.black)
        .padding()
        .background {
            Color.gray
                .opacity(0.3)
                .cornerRadius(8)
        }    }
}

struct CustomTextfieldAula_Previews: PreviewProvider {
    static var previews: some View {
        CustomTextfield(placeholder: "Digite sua Senha", bind: .constant("123456"))
    }
}
