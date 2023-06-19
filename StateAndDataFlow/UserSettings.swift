//
//  UserSettings.swift
//  StateAndDataFlow
//
//  Created by Zaki on 19.06.2023.
//

import Foundation

final class UserSettings: ObservableObject {
    @Published var isLoggedIn = false
    var name = ""
}
