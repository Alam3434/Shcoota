//
//  Users.swift
//  Shcoota
//
//  Created by Mohammad Alam on 1/6/25.
//

import Foundation
struct User: Codable {
    let id:String
    let fullName:String
    let email:String
    let joined: TimeInterval
}
