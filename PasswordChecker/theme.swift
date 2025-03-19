//
//  theme.swift
//  PasswordChecker
//
//  Created by Tim Randall on 19/3/2025.
//

import Foundation

import SwiftUI

struct Background: View {
    var body: some View {
        VStack{
            Color(.black)
        }.edgesIgnoringSafeArea(.all)
    }
}

struct TextWidget: View {
    var words: String
    @Environment(\.colorScheme) var colorScheme: ColorScheme
    var body: some View {
        Text(words).font(Font.custom("Arial", size: 24))
            .padding()
            .foregroundColor(.white)
    }
}

struct TitleWidget: View {
    var words: String
    @Environment(\.colorScheme) var colorScheme: ColorScheme
    var body: some View {
        Text(words).font(Font.custom("Arial", size: 28))
            .padding()
            .foregroundColor(.white)
    }
}
