//
//  PasswordCheckerApp.swift
//  PasswordChecker
//
//  Created by Tim Randall on 19/3/2025.
//

import SwiftUI

@main
struct Password_Checker_and_CreatorApp: App {
    @StateObject var viewSelector = ViewSelector()
    var body: some Scene {
        WindowGroup {
            MasterView(viewSelector: viewSelector)
        }
    }
}
