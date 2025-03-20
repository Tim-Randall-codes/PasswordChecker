//
//  page1.swift
//  PasswordChecker
//
//  Created by Tim Randall on 19/3/2025.
//

import Foundation
import SwiftUI

var numberOfCharacters: Int = 0
var numberOfOptions: Int = 0
var numberOfPossiblePasswords: Int = 0
var hasSmalls: Bool = false
var hasCapitals: Bool = false
var hasNumbers: Bool = false
var hasSpecials: Bool = false

struct PageOneView: View {
    @StateObject var viewSelector: ViewSelector
    @State var usersPassword: String = ""
    var body: some View {
        ZStack{
            Background()
            VStack{
                TitleWidget(words: "page one")
                TextField("Enter password", text: $usersPassword).font(Font.custom("Arial", size: 28))
                    .padding()
                    .foregroundColor(.black)
                Button(action:{
                    judgePassword(password: usersPassword)
                    viewSelector.currentPage = .page2
                }) {
                    Text("Judge").padding()
                }
            }
        }
    }
    func judgePassword(password: String){
        for char in usersPassword {
            numberOfCharacters += 1
            if char == "a" || char == "b" || char == "c" || char == "d" || char == "e" || char == "f" || char == "g" || char == "h" || char == "i" || char == "j" || char == "k" || char == "l" || char == "m" || char == "n" || char == "o" || char == "p" || char == "q" || char == "r" || char == "s" || char == "t" || char == "u" || char == "v" || char == "w" || char == "x" || char == "y" || char == "z" {
                hasSmalls = true
            }
            else if char == "0" || char == "1" || char == "2" || char == "3" || char == "4" || char == "5" || char == "6" || char == "7" || char == "8" || char == "9" {
                hasNumbers = true
            }
            else if char == "A" || char == "B" || char == "C" || char == "D" || char == "E" || char == "F" || char == "G" || char == "H" || char == "I" || char == "J" || char == "K" || char == "L" || char == "M" || char == "N" || char == "O" || char == "P" || char == "Q" || char == "R" || char == "S" || char == "T" || char == "U" || char == "V" || char == "W" || char == "X" || char == "Y" || char == "Z" {
                hasCapitals = true
            }
            else if char == " " || char == "!" || char == "#" || char == "$" || char == "%" || char == "&" || char == "?" || char == "." || char == "," || char == "/" {
                hasSpecials = true
            }
        }
        if hasSmalls == true {
            numberOfOptions += 26
        }
        if hasNumbers == true {
            numberOfOptions += 10
        }
        if hasCapitals == true {
            numberOfOptions += 26
        }
        if hasSpecials == true {
            numberOfOptions += 10
        }
        numberOfPossiblePasswords = Int(pow(Double(numberOfOptions), Double(numberOfCharacters))) // weird way to put something to a power
    }
}
