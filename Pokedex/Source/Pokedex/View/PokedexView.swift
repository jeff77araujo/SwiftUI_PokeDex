//
//  PokedexView.swift
//  Pokedex
//
//  Created by Mac do JEFF on 25/08/23.
//

import SwiftUI

struct PokedexView: View {
    @Environment(\.colorScheme) var colorScheme
    @ObservedObject var viewModel = PokedexViewModel.shared
    @State var searchText = ""
    
    var body: some View {
        NavigationView {
            VStack {
                Spacer()
                    .frame(height: 380)
                
                VStack {
                    search
                    pokemonScroll
                }
                .padding(24)
                .edgesIgnoringSafeArea(.vertical)
                .background(colorScheme == .dark ? .black : .white)
                .cornerRadius(30)
                .edgesIgnoringSafeArea(.vertical)
            }
            .background(background)
        }
    }
}

extension PokedexView {
    var search: some View {
        HStack {
            TextField("Pesquisar pokemon", text: $searchText)
                .autocorrectionDisabled()
                .textInputAutocapitalization(.never)
            Button {
                searchText = ""
            } label: {
                Image(systemName: "xmark.circle.fill")
                    .foregroundColor(darkMode)
            }
        }
        .padding()
        .background {
            Capsule().stroke(.gray)
        }
    }
    
    // MARK: - mostra somente os Pokemons de acordo com a pesquisa
    var pokemonScroll: some View {
        ScrollView(showsIndicators: false) {
            ForEach(viewModel.pokemons) { pokemonIndex in
                if searchText.trimmingCharacters(in: .whitespacesAndNewlines).isEmpty {
                    PokemonListItem(pokemonIndex: pokemonIndex)
                } else if let name = pokemonIndex.name, name.lowercased().contains(searchText.trimmingCharacters(in: .whitespacesAndNewlines).lowercased()) {
                    PokemonListItem(pokemonIndex: pokemonIndex)
                }
            }
        }
    }
    
    var background: some View {
        ZStack {
            Color.black
                .edgesIgnoringSafeArea(.vertical)
            Image("poke-poke")
                .resizable()
                .scaledToFill()
        }
    }
    
    var darkMode: Color {
        colorScheme == .dark ? .white : .gray
    }
}

struct PokedexView_Previews: PreviewProvider {
    static var previews: some View {
        PokedexView()
    }
}
