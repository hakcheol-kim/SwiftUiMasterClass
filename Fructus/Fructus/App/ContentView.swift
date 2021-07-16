//
//  ContentView.swift
//  Fructus
//
//  Created by 김학철 on 2021/06/10.
//

import SwiftUI

struct ContentView: View {
    @State private var isShowingSetting:Bool = false
    var fruits: [Fruit] = fruitsData
    
    var body: some View {
        NavigationView {
            List {
                ForEach(fruits.shuffled()) { item in
                    NavigationLink(destination: FruitDetailView(fruit: item)) {
                        FruitRowView(fruit: item)
                            .padding(.vertical, 4)
                    }
                }
            }
            .navigationTitle("Fruits")
            .navigationBarItems(trailing:
                                    Button(action: {
                                        isShowingSetting = true
                                    }) {
                                        Image(systemName: "slider.horizontal.3")
                                    }
                .sheet(isPresented: $isShowingSetting
                       , content: {
                        SettingView()
                       }))
        }
        .navigationViewStyle(StackNavigationViewStyle())
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
