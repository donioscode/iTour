//
//  Destination.swift
//  iTour
//
//  Created by doniyor normuxammedov on 20/01/24.
//

import Foundation
import SwiftData

@Model
class Destination {
    var name: String
    var details: String
    let data: Data
    var priority: Int
    
    init(name: String, details: String, data: Data, priority: Int) {
        self.name = name
        self.details = details
        self.data = data
        self.priority = priority
    }
}
