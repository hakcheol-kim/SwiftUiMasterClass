//
//  CreditsView.swift
//  Africa
//
//  Created by 김학철 on 2021/06/11.
//

import SwiftUI

struct CreditsView: View {
    var body: some View {
        VStack {
            Image("compass")
                .resizable()
                .scaledToFit()
                .frame(width: 128, height: 128)
            Text("""
                  Copyright © Robert Petras
                  All right reserved
                  Better Apps ♡ Less Code
                """)
                .font(.footnote)
                .padding()
                .multilineTextAlignment(.center)
        }.padding()
        .opacity(0.4)
    }
}

struct CreditsView_Previews: PreviewProvider {
    static var previews: some View {
        CreditsView()
            .previewLayout(.sizeThatFits)
            .padding()
        
    }
}
