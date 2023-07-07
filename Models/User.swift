//
//  User.swift
//  simpleMVVM
//
//  Created by Даниил Тчанников on 07.07.2023.
//

import Foundation

struct User {
    let login: String?
    let passwords: String?
}

extension User {
    static var logins = [
        User(login: "lexone", passwords: "12345")
    ]
}
