//
//  RenderConditional.swift
//  Pokedex
//
//  Created by Mac do JEFF on 23/08/23.
//

import SwiftUI

struct RenderConditional: View {
    
    @State var heroes = ["spider", "ironman", "captainamerica", "antman", "hulk"]
    @State var selectedHero = ""
    
    var body: some View {
        VStack {
            
            switch selectedHero {
            case "spider": getImage("spider")
            case "ironman": getImage("ironman")
            case "captainamerica": getImage("captainamerica")
            case "antman": getImage("antman")
            default: getImage("hulk")
            }
            
            Button {
                selectedHero = heroes.randomElement()!
                print("\(selectedHero)")
            } label: {
                Text("NOVO HERÓI")
            }
            .padding()

        }
    }
}

extension RenderConditional {
    func getImage(_ name: String) -> some View {
        Image(name)
            .resizable()
            .scaledToFit()
    }
}

struct RenderConditional_Previews: PreviewProvider {
    static var previews: some View {
        RenderConditional()
    }
}
