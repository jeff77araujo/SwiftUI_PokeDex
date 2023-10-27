//
//  StatesExemple.swift
//  Pokedex
//
//  Created by Mac do JEFF on 22/08/23.
//

import SwiftUI

struct StatesExemple: View {
    @State var email = ""
    @State var password = ""
    @State var rememberMe = false
    
    var body: some View {
        VStack(spacing: 15) {
            Text("Login")
                .font(.title)
            
            CustomTextfield(placeholder: "Digite seu email", bind: $email)
            CustomTextfield(placeholder: "Digite sua senha", bind: $password, isSecure: true)
            
            Toggle(isOn: $rememberMe) {
                Text("Lembrar senha")
            }
            
            Button {
                guard !email.isEmpty && !password.isEmpty else { return }
                print("email: \(email) - senha: \(password)")
            } label: {
                Text("Entrar")
                    .foregroundColor(.white)
                    .fontWeight(.bold)
                    .frame(height: 50)
                    .frame(maxWidth: .infinity)
                    .background(
                        RoundedRectangle(cornerRadius: 8)
                            .fill(.orange)
                    )
            }
            .padding(.top)
            .disabled(email.isEmpty || password.isEmpty)

  
        }
        .padding()
    }
}

struct StatesExemple_Previews: PreviewProvider {
    static var previews: some View {
        StatesExemple()
    }
}
