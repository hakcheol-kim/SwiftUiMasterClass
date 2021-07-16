//
//  ContentView.swift
//  Avocados
//
//  Created by 김학철 on 2021/07/14.
//

import SwiftUI

struct ContentView: View {
    var hearders: [Header] = headersData
    var facts: [Fact] = factsData
    var recipes: [Recipe] = recipesData
    
    var body: some View {
        ScrollView(.vertical, showsIndicators:false) {
            VStack(alignment: .center, spacing: 20, content: {
                ScrollView(.horizontal, showsIndicators: false) {
                    HStack(alignment: .top, spacing: 0, content: {
                        ForEach(hearders) { item in
                            HeaderView(header: item)
                        }
                    })
                }
                Text("Avocado Dishes")
                    .fontWeight(.bold)
                    .modifier(TitleModifier())
                
                DishesView()
                    .frame(maxWidth: 640)
                
                Text("Avocado Facts")
                    .fontWeight(.bold)
                    .modifier(TitleModifier())
                
                
                ScrollView(.horizontal, showsIndicators: false) {
                    HStack(alignment: .top
                           , spacing: 60, content: {
                            ForEach(facts) { item in
                                FactsView(fact: item)
                            }
                    })
                    .padding(.vertical)
                    .padding(.leading, 60)
                    .padding(.trailing, 20)
                }
                
                Text("Avoca Recipes")
                    .fontWeight(.bold)
                    .modifier(TitleModifier())
                
                VStack(alignment: .center, spacing: 20, content: {
                    ForEach(recipes) { item in
                        RecipeCardView(recipe: item)
                    }
                })
                .frame(maxWidth: 640)
                .padding(.horizontal)
              
                VStack(alignment: .center, spacing: 20, content: {
                    Text("All About Avocados")
                        .fontWeight(.bold)
                        .modifier(TitleModifier())
                    
                    Text("Everything you wanted to know about avocados but were too afraid to ask.")
                        .font(.system(.body, design: .serif))
                        .multilineTextAlignment(.center)
                        .foregroundColor(.gray)
                        .frame(minHeight:60)

                })
                .frame(maxWidth: 640)
                .padding()
                .padding(.bottom, 85)
            })
            
        }
        .edgesIgnoringSafeArea(.all)
        .padding(0)
    }
}
struct  TitleModifier: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(.system(.title, design: .serif))
            .foregroundColor(Color("ColorGreenAdaptive"))
            .padding(8)
    }
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(hearders:headersData, facts: factsData, recipes: recipesData)
    }
}
