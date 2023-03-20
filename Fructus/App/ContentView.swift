//
//  ContentView.swift
//  Fructus
//
//  Created by Jonathan Schaffer on 3/16/23.
//

import SwiftUI

struct ContentView: View {
    // MARK: - PROPERTIES
    
    
    var fruits: [Fruit] = fruitsData
    
    // MARK: - BODY
    
    
    var body: some View {
        NavigationView{
            List {
                ForEach(fruits.shuffled()) { item in
                    FruitRowView(fruit: item)
                        .padding(.vertical, 4)
                }
            }
            .navigationTitle("Fruits")
        }
    }
}

//MARK: - PREVIEW

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(fruits: fruitsData)
    }
}
