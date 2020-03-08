//
//  Friend.swift
//  FriendFace
//
//  Created by Mark Kim on 3/8/20.
//  Copyright © 2020 Mark Kim. All rights reserved.
//

import Foundation

struct Friend: Codable{
    var id: UUID
    var isActive: Bool
    var name: String
    var age: Int
    var company: String
    var email: String
    var address: String
    var about: String
    var registered: Date
    var tags: [String]
    
}
