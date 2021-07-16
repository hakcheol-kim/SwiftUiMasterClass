//
//  CenterModifier.swift
//  Africa
//
//  Created by 김학철 on 2021/06/10.
//

import SwiftUI
struct CenterModifier: ViewModifier {
    func body(content: Content) -> some View {
        HStack {
            Spacer()
            content
            Spacer()
        }
    }
}
