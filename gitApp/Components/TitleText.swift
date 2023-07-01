//
//  TitleText.swift
//  gitApp
//
//  Created by Kir on 01.07.2023.
//

import SwiftUI

struct TitleText: View {
    @State var text = ""
    var body: some View {
        Text("Words Game")
            .padding()
            .frame(maxWidth: .infinity)
            .font(.custom("AvenirNext-Bold", size: 42 ))
            .cornerRadius(16)
            .foregroundColor(.white)
    }
}

struct TitleText_Previews: PreviewProvider {
    static var previews: some View {
        TitleText(text: "Magnitoterapy")
    }
}
