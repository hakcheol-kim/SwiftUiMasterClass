//
//  StartButtonView.swift
//  Fructus
//
//  Created by 김학철 on 2021/06/10.
//

import SwiftUI

struct StartButtonView: View {
    @AppStorage("isOnboarding") var isOnboarding: Bool?
    var body: some View {
        Button(action: {
            isOnboarding = false
        }) {
            HStack(alignment: .center, spacing: 8, content: {
                Text("Start")
                Image(systemName: "arrow.right.circle").imageScale(.large)
            })
            .padding(.horizontal, 16)
            .padding(.vertical, 10)
            .background(Capsule().strokeBorder(Color.white, lineWidth: 1.25))
        }
        .accentColor(Color.white)
    }

}

struct StartButtonView_Previews: PreviewProvider {
    static var previews: some View {
        StartButtonView()
            .preferredColorScheme(.dark)
            .previewLayout(.sizeThatFits)
    }
}
