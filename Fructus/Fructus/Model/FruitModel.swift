//
//  Fruit.swift
//  Fructus
//
//  Created by 김학철 on 2021/06/10.
//

import SwiftUI

struct Fruit: Identifiable {
    var id = UUID()
    var title: String
    var headline: String
    var image: String
    var gradientColors: [Color]
    var description: String
    var nutrition: [String]
}
