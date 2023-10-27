//
//  LoginViewAula.swift
//  Pokedex
//
//  Created by Mac do JEFF on 22/08/23.
//

import SwiftUI

struct LoginViewAula: View {
    
    @State var email = ""
    @State var password = ""
    @State var rememberMe = false
    @State var showSheet = false
    
    var body: some View {
        NavigationView {
            VStack(alignment: .center, spacing: 15) {
                Text("Login")
                    .font(.title)
                
                CustomTextfieldAula(placeholder: "Digite seu email", bind: $email)
                CustomTextfieldAula(placeholder: "Digite sua senha", bind: $password, isSecure: true)
                
                Toggle(isOn: $rememberMe) {
                    Text("Lembrar senha")
                }
                
                buttonEnter
                
                HStack {
                    Text("Ainda não possui uma conta?")
//                    buttonNavigation
                    buttonSheet
                }
                
            }
            .padding()
//            .fullScreenCover(isPresented: $showSheet) {
//                RegisterView()
//            }
            .sheet(isPresented: $showSheet) {
                RegisterViewAula()
            }
            
        }
        
    }
}

extension LoginViewAula {
    
    var buttonEnter: some View {
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
        .opacity((email.isEmpty || password.isEmpty) ? 0.5 : 1)

    }
    
    var buttonNavigation: some View {
        NavigationLink {
            RegisterViewAula()
        } label: {
            Text("Cadastrar")
                .foregroundColor(.orange)
                .fontWeight(.bold)
        }
    }
    
    var buttonSheet: some View {
        Button {
            showSheet.toggle()
        } label: {
            Text("Cadastrar")
                .foregroundColor(.orange)
                .fontWeight(.bold)
        }
    }

}

struct LoginViewAula_Previews: PreviewProvider {
    static var previews: some View {
        LoginViewAula()
    }
}
