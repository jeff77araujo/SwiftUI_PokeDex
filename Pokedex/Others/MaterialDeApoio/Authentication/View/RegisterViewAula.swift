//
//  RegisterViewAula.swift
//  Pokedex
//
//  Created by Mac do JEFF on 22/08/23.
//

import SwiftUI

struct RegisterViewAula: View {
    
    @State var email = ""
    @State var password = ""
    @State var passwordConfirm = ""

    @Environment(\.presentationMode) var presentationMode
//    @Environment(\.colorScheme) var colorScheme
    
    var body: some View {
        NavigationView {
            VStack(alignment: .center, spacing: 15) {
                Text("Registro")
                    .font(.title)
                
                CustomTextfieldAula(placeholder: "Digite seu email", bind: $email)
                CustomTextfieldAula(placeholder: "Digite sua senha", bind: $password, isSecure: true)
                CustomTextfieldAula(placeholder: "Confirme sua senha", bind: $passwordConfirm, isSecure: true)
                buttonCreateUser
                
                HStack {
                    Text("Já possui uma conta?")
//                        .foregroundColor(colorScheme == .dark ? .white : .black)
                    buttonNavigation
                }
            }
            .padding()
            
        }
        .navigationBarBackButtonHidden()
    }
}

extension RegisterViewAula {
    
    var buttonCreateUser: some View {
        Button {
            guard !email.isEmpty && !password.isEmpty && !passwordConfirm.isEmpty else { return }
            print("email: \(email) - senha: \(password) - senha confirmada: \(passwordConfirm)")
        } label: {
            Text("Criar conta")
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
        .disabled(email.isEmpty || password.isEmpty || passwordConfirm.isEmpty)
        .opacity((email.isEmpty || password.isEmpty || passwordConfirm.isEmpty) ? 0.5 : 1)

    }
    
    var buttonNavigation: some View {
        Button {
            presentationMode.wrappedValue.dismiss()
        } label: {
            Text("Entrar")
                .foregroundColor(.orange)
                .fontWeight(.bold)
        }

    }
}

struct RegisterViewAula_Previews: PreviewProvider {
    static var previews: some View {
        RegisterViewAula()
    }
}
