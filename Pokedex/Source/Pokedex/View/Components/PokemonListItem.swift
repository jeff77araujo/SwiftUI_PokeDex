//
//  PokemonListItem.swift
//  Pokedex
//
//  Created by Mac do JEFF on 01/09/23.
//

import SwiftUI

struct PokemonListItem: View {
    @Environment(\.colorScheme) var colorScheme
    
    var pokemonIndex: PokemonIndex
    
    var body: some View {
        NavigationLink {
            PokemonDetailsView(viewModel: PokemonDetailsViewModel(pokemonIndex))
        } label: {
            VStack {
                HStack {
                    Image("pokebola")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 30)
                    
                    Text(pokemonIndex.name?.capitalized ?? "Qual é esse pokemon?")
                        .font(.title2)
                        .foregroundColor(darkMode)
                        
                    Spacer()
                    Image(systemName: "chevron.right")
                        .foregroundColor(darkMode)
                }
                .padding(.vertical)
                Divider()
                    .foregroundColor(darkMode)
            }
            .padding(.horizontal)
        }
    }
}

extension PokemonListItem {
    var darkMode: Color {
        colorScheme == .dark ? .white : .black
    }
}

struct PokemonListItem_Previews: PreviewProvider {
    static var previews: some View {
        PokemonListItem(pokemonIndex: PokemonIndex(name: "bulbasaur", url: "https://pokeapi.co/api/v2/pokemon/1"))
    }
}
