//
//  Video.swift
//  Africa
//
//  Created by 김학철 on 2021/06/15.
//

import SwiftUI

struct Video: Codable, Identifiable {
    let id: String
    let name: String
    let headline: String
    
    var thumbnail: String {
        "video-\(id)"
    }
}
