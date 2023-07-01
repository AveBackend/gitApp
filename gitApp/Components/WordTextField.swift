//
//  WordTextField.swift
//  gitApp
//
//  Created by Kir on 01.07.2023.
//

import SwiftUI

struct WordTextField: View {
    @State var word: Binding<String>
    var placeholder: String
    var body: some View {
        TextField(placeholder, text: word)
            .font(.title2)
            .padding()
            .background(.white)
            .cornerRadius(12)
    }
}
