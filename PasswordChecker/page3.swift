//
//  page3.swift
//  PasswordChecker
//
//  Created by Tim Randall on 19/3/2025.
//

import Foundation
import SwiftUI

struct PageThreeView: View {
    @StateObject var viewSelector: ViewSelector
    var body: some View {
        ZStack{
            Background()
            VStack{
                TitleWidget(words: "page three")
            }
        }
    }
}
