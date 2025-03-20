//
//  page2.swift
//  PasswordChecker
//
//  Created by Tim Randall on 19/3/2025.
//

import Foundation
import SwiftUI

struct PageTwoView: View {
    @StateObject var viewSelector: ViewSelector
    var body: some View {
        ZStack{
            Background()
            VStack{
                TitleWidget(words: "Possible Passwords: " + String(numberOfPossiblePasswords))
                Button(action:{
                    numberOfCharacters = 0
                    numberOfOptions = 0
                    numberOfPossiblePasswords = 0
                    viewSelector.currentPage = .page1
                }) {
                    Text("Do Again").padding()
                }
            }
        }
    }
}
