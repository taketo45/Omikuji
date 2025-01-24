//
//  ContentView.swift
//  Omikuji
//
//  Created by Taketoshi Ikegai on 2025/01/24.
//

import SwiftUI



struct ContentView: View {
    @State var imageName = "omikuji"
    var body: some View {
        VStack {
            Image(imageName)
                .resizable()
                .frame(maxWidth: .infinity)
            HStack(spacing: 16) {
                Button("リセット"){
                    imageName = "omikuji"
                    
                }
                .modifier(ButtonModifier(backgroundColor: .red))
                Button("おみくじを引く"){
                    updateOmikujiImageView()
                    
                }
                .modifier(ButtonModifier(backgroundColor: .green))
            }
        }
        .padding(40)
    }
    func updateOmikujiImageView(){
        let lucks = ["daikichi", "kichi", "kyou"]
        imageName = lucks[Int.random(in: 0...2)]
    }
}

#Preview {
    ContentView()
}

struct ButtonModifier: ViewModifier {
    let backgroundColor: Color
    func body(content: Content) -> some View {
        content
            .frame(maxWidth: .infinity, minHeight: 50)
            .background(backgroundColor)
            .foregroundColor(.white)
    }
}


