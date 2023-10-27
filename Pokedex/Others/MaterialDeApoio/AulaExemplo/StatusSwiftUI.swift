//
//  StatusSwiftUI.swift
//  Pokedex
//
//  Created by Mac do JEFF on 21/08/23.
//

import SwiftUI

struct StatusSwiftUI: View {
    
    @State var count = 0
    
    var body: some View {
        VStack {
            HStack {
                minusButton
                countLabel
                plusButton
            }
        }
    }
}

extension StatusSwiftUI {
    
    var minusButton: some View {
        Button {
            count -= 1
        } label: {
            ZStack {
                Circle()
                    .fill(.orange)
                    .frame(width: 100, height: 100)
                
                Image(systemName: "minus")
                    .resizable()
                    .frame(width: 50, height: 7)
                    .foregroundColor(.black)
            }
            .shadow(radius: 15)
        }
    }
    
    var countLabel: some View {
        Text("\(count)")
            .font(.title)
            .foregroundColor(count < 0 ? .red : .green)
            .frame(width: 50, height: 50)
    }
    
    var plusButton: some View {
        
        Button {
            count += 1
        } label: {
            ZStack {
                Circle()
                    .fill(count > 5 ? .green : .orange)
                    .frame(width: 100, height: 100)
                
                Image(systemName: "plus")
                    .resizable()
                    .frame(width: 50, height: 50)
                    .foregroundColor(.black)
            }
            .shadow(radius: 15)
        }
    }
}

struct StatusSwiftUI_Previews: PreviewProvider {
    static var previews: some View {
        StatusSwiftUI()
    }
}
