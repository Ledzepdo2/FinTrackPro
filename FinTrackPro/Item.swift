//
//  Item.swift
//  FinTrackPro
//
//  Created by Jesus Perez Mojica on 22/09/24.
//

import Foundation
import SwiftData

@available(iOS 17, *)
@Model
final class Item {
    var timestamp: Date
    
    init(timestamp: Date) {
        self.timestamp = timestamp
    }
}
