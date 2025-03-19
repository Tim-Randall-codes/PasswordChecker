//
//  page1.swift
//  PasswordChecker
//
//  Created by Tim Randall on 19/3/2025.
//

import Foundation
import SwiftUI

var score: Int = 0
var hasSmall: Bool = false
var hasNumbers: Bool = false
var hasCapitals: Bool = false
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
            if char == "a" || char == "b" || char == "c" || char == "d" || char == "e" || char == "f" || char == "g" || char == "h" || char == "i" || char == "j" || char == "k" || char == "l" || char == "m" || char == "n" || char == "o" || char == "p" || char == "q" || char == "r" || char == "s" || char == "t" || char == "u" || char == "v" || char == "w" || char == "x" || char == "y" || char == "z" {
                hasSmall = true
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
        if hasSmall == true {
            score += 25
        }
    }
}
