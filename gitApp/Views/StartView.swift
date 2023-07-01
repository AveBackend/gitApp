//
//  ContentView.swift
//  gitApp
//
//  Created by Kir on 01.07.2023.
//

import SwiftUI

struct StartView: View {
    @State var bigWord = ""
    @State var player1 = ""
    @State var player2 = ""
    @State var isShowedGame = false
    var body: some View {
        VStack{
            TitleText(text: "WordsGame")
            WordTextField(word: $bigWord, placeholder: "Введите большое слово")
                .padding(20)
                .padding(.top, 32)
            WordTextField(word: $player1, placeholder: "Игрок 1")
                .cornerRadius(12)
                .padding(.horizontal, 20)
            WordTextField(word: $player2, placeholder: "Игрок 2")
                .cornerRadius(12)
                .padding(.horizontal, 20)
            Button{
                isShowedGame.toggle()
            } label: {
                Text("Старт")
                .font(.custom("", size: 30))
                    .foregroundColor(.white)
                    .padding()
                    .padding(.horizontal, 64)
                    .background((LinearGradient(gradient: Gradient(colors: [Color.red, Color.blue]), startPoint: .top, endPoint: .bottom)))
                    .cornerRadius(100)
            }
        }.frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(LinearGradient(gradient: Gradient(colors: [Color.red, Color.blue]), startPoint: .top, endPoint: .bottom))
            .edgesIgnoringSafeArea(.all)
            .fullScreenCover(isPresented: $isShowedGame){
                GameView()
            }
    }
}
struct StartView_Previews: PreviewProvider {
    static var previews: some View {
        StartView()
    }
}
