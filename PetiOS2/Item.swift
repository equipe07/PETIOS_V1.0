//
//  Item.swift
//  PetiOS2
//
//  Created by iredefbmac_26 on 18/05/25.
//

import Foundation
import SwiftData

@Model
final class Item {
    var timestamp: Date
    
    init(timestamp: Date) {
        self.timestamp = timestamp
    }
}
