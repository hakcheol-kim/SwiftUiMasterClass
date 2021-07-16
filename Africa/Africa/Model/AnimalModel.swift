//
//  AnimalModel.swift
//  Africa
//
//  Created by 김학철 on 2021/06/10.
//

import SwiftUI
struct Animal: Codable, Identifiable {
    let id: String
    let name: String
    let headline: String
    let description: String
    let link: String
    let image: String
    let gallery: [String]
    let fact: [String]
}
