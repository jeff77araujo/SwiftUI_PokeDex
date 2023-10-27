//
//  CustomButton.swift
//  Pokedex
//
//  Created by Mac do JEFF on 25/08/23.
//

import SwiftUI

struct CustomButton: View {
    var text: String
    var action: () -> Void
    
    var body: some View {
        Button {
            action()
        } label: {
            Text(text)
                .foregroundColor(.white)
                .font(.title2)
                .fontWeight(.bold)
                .frame(height: 50)
                .frame(maxWidth: .infinity)
                .background {
                    Capsule()
                        .fill(.orange)
                }
        }
    }
}

struct CustomButton_Previews: PreviewProvider {
    static var previews: some View {
        CustomButton(text: "Criar conta", action: {} )
    }
}
