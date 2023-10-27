//
//  RegisterView.swift
//  Pokedex
//
//  Created by Mac do JEFF on 25/08/23.
//

import SwiftUI

struct RegisterView: View {
    
    @State var email = ""
    @State var password = ""
    @State var confirmPassword = ""
    
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        VStack(spacing: 25) {
                mainImage
            
                CustomTextfield(placeholder: "Digite seu e-mail", bind: $email)
                CustomTextfield(placeholder: "Digite sua senha", bind: $password, isSecure: true)
                CustomTextfield(placeholder: "Confirme a mesma senha", bind: $confirmPassword, isSecure: true)
            
            VStack(spacing: 5) {
                CustomButton(text: "Criar conta") {
                    // TODO
                }
                enterUserButton
            }
        }
        .padding(.horizontal)
        .navigationBarBackButtonHidden()
    }
}

extension RegisterView {
    var mainImage: some View {
        Image("poke3")
            .resizable()
            .scaledToFit()
            .padding(.horizontal)
    }
    
    var enterUserButton: some View {
        HStack {
            Text("Já tem uma conta?")
            Button {
                presentationMode.wrappedValue.dismiss()
            } label: {
                Text("Entrar")
                    .foregroundColor(.orange)
                    .fontWeight(.bold)
            }

        }
    }

}

struct RegisterView_Previews: PreviewProvider {
    static var previews: some View {
        RegisterView()
    }
}
