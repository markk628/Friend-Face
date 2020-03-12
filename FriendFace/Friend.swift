//
//  Friend.swift
//  FriendFace
//
//  Youtube tutorial by Paul Hudson
//  Created by Mark Kim on 3/8/20.
//  Copyright © 2020 Mark Kim. All rights reserved.
//

import Foundation

struct Friend: Codable{
    let id: UUID
    let isActive: Bool
    let name: String
    let age: Int
    let company: String
    let email: String
    let address: String
    let about: String
    let registered: Date
    let tags: [String]
    let friends: [Connection]
    
    var friendList: String {
        return friends.map { $0.name }.joined(separator: ", ")
    }
}

extension Array where Element == Friend {
    func matching(_ text: String?) -> [Friend] {
        if let text = text, text.count > 0 {
            return self.filter {
                $0.name.contains(text)
                    || $0.company.contains(text)
                    || $0.address.contains(text)
            }
        } else {
            return self
        }
    }
}
