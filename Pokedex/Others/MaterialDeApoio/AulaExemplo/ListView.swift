//
//  ListView.swift
//  Pokedex
//
//  Created by Mac do JEFF on 26/08/23.
//

import SwiftUI

struct ListView: View {
    var list: [String] = ["AppIcon 1","AppIcon 2","AppIcon 3","AppIcon 4","AppIcon 5"]
    var body: some View {
        VStack {
            List {
                ForEach(list, id: \.self) { name in
                    Button {
                        UIApplication.shared.setAlternateIconName(name)
                    } label: {
                        Text(name)
                            .fontWeight(.bold)
                    }
                }
            }
            
            List {
                ForEach(list, id: \.self) { name in
                    Button {
                        UIApplication.shared.setAlternateIconName(name)
                    } label: {
                        Text(name)
                            .fontWeight(.bold)
                    }
                }
            }
        }
    }
}

struct ListView_Previews: PreviewProvider {
    static var previews: some View {
        ListView()
    }
}
