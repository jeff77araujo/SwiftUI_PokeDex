//
//  AulaView.swift
//  Pokedex
//
//  Created by Mac do JEFF on 17/08/23.
//

import SwiftUI

struct AulaView: View {
    var body: some View {
        VStack(spacing: 0) {
            Color.green
                .frame(width: 320, height: 40)
            HStack(spacing: 0) {
                Color.green
                    .frame(width: 40, height: 80)
                Color.black
                    .frame(width: 80, height: 80)
                Color.green
                    .frame(width: 80, height: 80)
                Color.black
                    .frame(width: 80, height: 80)
                Color.green
                    .frame(width: 40, height: 80)
            }
            HStack(spacing: 0) {
                Color.green
                Color.black
                    .frame(width: 80)
                Color.green
            }
            .frame(width: 320, height: 40)
            
            HStack(spacing: 0) {
                Color.green
                Color.black
                    .frame(width: 160)
                Color.green
            }
            .frame(width: 320, height: 80)

            HStack(spacing: 0) {
                Color.green
                Color.black
                    .frame(width: 40)
                Color.green
                Color.black
                    .frame(width: 40)
                Color.green
            }
            .frame(width: 320, height: 40)
            
            Color.green
                .frame(width: 320, height: 40)
        }
    }
 
}

struct AulaView_Previews: PreviewProvider {
    static var previews: some View {
        AulaView()
    }
}


//VStack(spacing: 0) {
//    HStack(spacing: 0) {
//        multiGreen(8)
//    }
//    HStack(spacing: 0) {
//        multiGreen(1)
//        multiBlack(2)
//        multiGreen(2)
//        multiBlack(2)
//        multiGreen(1)
//    }
//    HStack(spacing: 0) {
//        multiGreen(1)
//        multiBlack(2)
//        multiGreen(2)
//        multiBlack(2)
//        multiGreen(1)
//    }
//    HStack(spacing: 0) {
//        multiGreen(3)
//        multiBlack(2)
//        multiGreen(3)
//    }
//    HStack(spacing: 0) {
//        multiGreen(2)
//        multiBlack(4)
//        multiGreen(2)
//    }
//    HStack(spacing: 0) {
//        multiGreen(2)
//        multiBlack(4)
//        multiGreen(2)
//    }
//    HStack(spacing: 0) {
//        multiGreen(2)
//        multiBlack(1)
//        multiGreen(2)
//        multiBlack(1)
//        multiGreen(2)
//    }
//    HStack(spacing: 0) {
//        multiGreen(8)
//    }
//
//}


//
//func multiGreen(_ count: Int) -> some View {
//    HStack(spacing: 0)  {
//        ForEach(0..<count, id: \.self)  { item in
//            Color.green
//                .frame(width: 40, height: 40)
//        }
//    }
//}
//
//func multiBlack(_ count: Int) -> some View {
//    HStack(spacing: 0)  {
//        ForEach(0..<count, id: \.self)  { item in
//            Color.black
//                .frame(width: 40, height: 40)
//        }
//    }
//}
