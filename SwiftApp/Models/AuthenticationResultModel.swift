//
//  AuthenticationResultModel.swift
//  SwiftApp
//
//  Created by Daniel Arango Cruz on 18/09/24.
//

import Foundation
import FirebaseAuth

final class AuthenticationResultModel {
    let uuid: String
    let email: String?
    let photoUrl: String?
    
    init(user: User) {
        self.uuid = user.uid
        self.email = user.email
        self.photoUrl = user.photoURL?.absoluteString
    }
}
