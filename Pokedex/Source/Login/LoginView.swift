//
//  LoginView.swift
//  Pokedex
//
//  Created by Mac do JEFF on 25/08/23.
//

import SwiftUI

struct LoginView: View {
    @State var email = ""
    @State var password = ""
    
    var body: some View {
        NavigationView {
            VStack(spacing: 25) {
                mainImage

                CustomTextfield(placeholder: "Digite seu e-mail", bind: $email)
                CustomTextfield(placeholder: "Digite sua senha", bind: $password, isSecure: true)
                
                VStack(spacing: 5) {
                    CustomButton(text: "Entrar") {
                        // TODO
                    }
                    
                    createUserButton
                }
            }
            .padding(.horizontal)
        }
    }
}

extension LoginView {
    var mainImage: some View {
        Image("poke")
            .resizable()
            .scaledToFit()
            .padding(.horizontal)
    }
    
    var createUserButton: some View {
        HStack {
            Text("Ainda não tem uma conta?")
            NavigationLink {
                RegisterView()
            } label: {
                Text("Cadastre-se")
                    .foregroundColor(.orange)
                    .fontWeight(.bold)
            }

        }
    }

}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
