//
//  HideKeyboardExtension.swift
//  Devote
//
//  Created by 김학철 on 2021/06/17.
//

import SwiftUI

extension View {
    func hideKeyboard() {
        UIApplication.shared.sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
    }
}
