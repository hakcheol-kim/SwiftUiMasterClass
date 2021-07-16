//
//  Shop.swift
//  Touchdown
//
//  Created by 김학철 on 2021/06/16.
//

import Foundation

class Shop: ObservableObject {
    @Published var showingProduct: Bool = false
    @Published var selectedProduct: Product? //= nil
}
