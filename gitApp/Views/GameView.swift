//
//  GameView.swift
//  gitApp
//
//  Created by Kir on 01.07.2023.
//

import SwiftUI

struct GameView: View {
    @State var GoBack = false
    var body: some View {
        VStack{
            Text("Здесь будет первый экран игры")
                .padding()
            Button {
                GoBack.toggle()
            } label:{
                Text("Вернуться назад")
                    .padding()
                    .cornerRadius(16)
            }.fullScreenCover(isPresented: $GoBack){StartView()}
            
        }
    }
    
}

struct GameView_Previews: PreviewProvider {
    static var previews: some View {
        GameView()
    }
}
