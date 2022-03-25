//
//  ContentView.swift
//  HashableSTBC
//
//  Created by Vahtee Boo on 25.03.2022.
//

import SwiftUI

struct MyCustomModel: Hashable {
    let title: String
    
    func hash(into hasher: inout Hasher) {
        hasher.combine(title)
    }
}

struct ContentView: View {
    let data = [
    MyCustomModel(title: "ONE"),
    MyCustomModel(title: "TWO"),
    MyCustomModel(title: "THREE"),
    MyCustomModel(title: "FOUR"),
    MyCustomModel(title: "FIVE"),
    MyCustomModel(title: "SIX"),
    MyCustomModel(title: "SEVEN"),
    ]
    
    var body: some View {
        ScrollView {
            VStack(spacing: 20) {
                ForEach(data, id: \.self) { item in
                    Text(item.title)
                    Text(item.hashValue.description)
                        .font(.headline)
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
