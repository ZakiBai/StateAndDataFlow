//
//  UserManager.swift
//  StateAndDataFlow
//
//  Created by Zaki on 19.06.2023.
//

import Combine

final class UserManager: ObservableObject {
    @Published var user = User()
    
    var nameIsValid: Bool {
        user.name.count >= 3
    }
    
    init() {}
    
    init(user: User) {
        self.user = user
    }
}
