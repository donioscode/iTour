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
    var date: Date
    var priority: Int
    @Relationship(deleteRule: .cascade) var sights = [Sight]()
     
    
    init(name: String = "", details: String = "", data: Date = .now, priority: Int = 2) {
        self.name = name
        self.details = details
        self.date = data
        self.priority = priority
    }
}
