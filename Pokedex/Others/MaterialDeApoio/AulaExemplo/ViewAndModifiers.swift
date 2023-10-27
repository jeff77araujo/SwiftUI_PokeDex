//
//  ViewAndModifiers.swift
//  Pokedex
//
//  Created by Mac do JEFF on 19/08/23.
//

import SwiftUI

struct ViewAndModifiers: View {
    var body: some View {
        
        VStack {
            Text("Tela de Login")
                .font(.title)
            ScrollView(.vertical) {
                Text("Email")
                    .padding(.top)
                Color.gray
                    .opacity(0.3)
                    .cornerRadius(15)
                    .frame(height: 50)
                Text("Senha")
                    .padding(.top)
                Color.gray
                    .opacity(0.3)
                    .cornerRadius(15)
                    .frame(height: 50)
            }
            .background(.red.opacity(0.2))
            
        }
    }
}

struct ViewAndModifiers_Previews: PreviewProvider {
    static var previews: some View {
        ViewAndModifiers()
    }
}


//            VStack {
                //                Text("Hello, World!")
                //                    .underline()
                //                    .foregroundColor(.purple)
                //                    .font(.title)
                //                    .background(.blue.opacity(0.3))
                //                    .fontWeight(.bold)
                //
                //                Image(systemName: "person")
                //                    .font(.system(size: 50))
                //                    .fontWeight(.bold)
                
                //                Image("spider")
                //                    .resizable()
                //                    .scaledToFit()
                //                    .frame(width: 300)
                
//                Button {
//                    print("Ola mundo!")
//                } label: {
//                    ZStack {
////                        Color.blue
//                        RoundedRectangle(cornerRadius: 15)
//                        Text("Clique aqui")
//                            .fontWeight(.bold)
//                            .font(.title)
//                            .foregroundColor(.white)
//                    }
//                    .frame(height: 50)
//
//                }
//                .padding()
