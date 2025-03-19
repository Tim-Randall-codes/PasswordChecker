//
//  ContentView.swift
//  PasswordChecker
//
//  Created by Tim Randall on 19/3/2025.
//

import SwiftUI

import SwiftUI

// things to move pages

enum Page {
    case page1
    case page2
    case page3
}

class ViewSelector: ObservableObject {
    @Published var currentPage: Page = .page1
}

struct MasterView: View {
    @StateObject var viewSelector: ViewSelector
    var body: some View {
        switch viewSelector.currentPage {
        case .page1: PageOneView(viewSelector: viewSelector)
        case .page2: PageTwoView(viewSelector: viewSelector)
        case .page3: PageThreeView(viewSelector: viewSelector)
        }
    }
}
