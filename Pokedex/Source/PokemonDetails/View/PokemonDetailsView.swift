//
//  PokemonDetailsView.swift
//  Pokedex
//
//  Created by Mac do JEFF on 25/08/23.
//

import SwiftUI

struct PokemonDetailsView: View {
    @Environment(\.colorScheme) var colorScheme
    @Environment(\.presentationMode) var presentationMode

    @ObservedObject var viewModel: PokemonDetailsViewModel
    
    var body: some View {
        VStack {   
            if let pokemon = viewModel.pokemon {
                colorBackground(pokemon)
                
                ScrollView(showsIndicators: false) {
                    VStack(spacing: 14) {
                        name(pokemon)
                        type(pokemon)
                        description(pokemon)
                        details(pokemon)
                    }
                }
            } else {
                ProgressView()
            }
        }
        .toolbar(.hidden)
        .onAppear { viewModel.getPokemon() }
    }
}

extension PokemonDetailsView {
    
    // MARK: - Cor do tipo do Pokemon
    func colorBackground(_ pokemon: Pokemon) -> some View {
        viewModel.getHexColor(hex: pokemon.types.first?.color ?? "")
            .cornerRadius(50)
            .edgesIgnoringSafeArea(.top)
            .frame(height: 280)
            .overlay( image(pokemon) )
            .overlay(backButton, alignment: .topLeading)
    }
    
    // MARK: - Imagem do Pokemon
    func image(_ pokemon: Pokemon) -> some View {
        AsyncImage(url: URL(string: pokemon.imageUrl)) { image in
            image
                .resizable()
                .scaledToFit()
                .frame(width: 320, height: 320)
            
        } placeholder: {
            ProgressView()
        }
    }
    
    // MARK: - Nome do Pokemon
    func name(_ pokemon: Pokemon) -> some View  {
        HStack {
            Text(pokemon.name.capitalized)
                .fontWeight(.heavy)
            
            Text("#\(viewModel.formatNumber(pokemon.id))")
                .fontWeight(.bold)
                .foregroundColor(.gray.opacity(0.7))
        }
        .font(.title)
    }
    
    // MARK: - Tipo do Pokemon
    func type(_ pokemon: Pokemon) -> some View {
        HStack(spacing: 24) {
            ForEach(pokemon.types, id: \.self) { type in
                Text(type.rawValue)
                    .fontWeight(.bold)
                    .foregroundColor(.white)
                    .padding(.vertical, 8)
                    .padding(.horizontal)
                    .background {
                        Capsule()
                            .fill(viewModel.getHexColor(hex: type.color))
                    }
            }
        }
    }
    
    // MARK: - Dados do Pokemon
    func description(_ pokemon: Pokemon) -> some View {
        HStack {
            VStack {
                Text("Peso")
                    .fontWeight(.bold)
                    .font(.title3)
                
                Text("\(String(format: "%.1f", pokemon.weight / 10)) kg")
                    .font(.title)
            }
            
            Spacer()
            
            VStack {
                Text("Altura")
                    .fontWeight(.bold)
                    .font(.title3)
                
                Text("\(String(format: "%.1f", pokemon.height / 10)) m")
                    .font(.title)
            }
        }
        .padding(.horizontal, 64)
    }
    
    // MARK: - Detalhes do Pokemon
    func details(_ pokemon: Pokemon) -> some View {
        VStack(spacing: 10) {
            Text("Detalhes")
                .font(.title)
                .fontWeight(.heavy)
            ForEach(pokemon.stats) { stat in
                HStack {
                    Text(stat.name.capitalized)
                    Spacer()
                    Text("\(stat.value)")
                        .fontWeight(.bold)
                }
                Divider()
                    .foregroundColor(darkMode)
            }
        }
        .padding(.horizontal, 56)
    }
    
    var backButton: some View {
        Button {
            presentationMode.wrappedValue.dismiss()
        } label: {
            Image(systemName: "arrow.left")
                .font(.title2)
                .foregroundColor(.black)
        }
        .padding()
    }
    
    var darkMode: Color {
        colorScheme == .dark ? .white : .black
    }
}


struct PokemonDetailsView_Previews: PreviewProvider {
    static var previews: some View {
        PokemonDetailsView(
            viewModel: PokemonDetailsViewModel(PokemonIndex(name: "bulbasaur", url: "https://pokeapi.co/api/v2/pokemon/1")
            )
        )
    }
}
