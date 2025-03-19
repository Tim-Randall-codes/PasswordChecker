//
//  page1.swift
//  PasswordChecker
//
//  Created by Tim Randall on 19/3/2025.
//

import Foundation
import SwiftUI

struct PageOneView: View {
    @StateObject var viewSelector: ViewSelector
    var body: some View {
        ZStack{
            Background()
            VStack{
                TitleWidget(words: "page one")
            }
        }
    }
}
