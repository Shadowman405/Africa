//
//  insetFactView.swift
//  Africa
//
//  Created by Maxim Mitin on 19.09.21.
//

import SwiftUI

struct insetFactView: View {
    let animal: Animal
    
    var body: some View {
        GroupBox {
            TabView {
                ForEach(animal.fact, id: \.self) { item in
                    Text(item)
                }
            }
            .tabViewStyle(PageTabViewStyle())
            .frame(minHeight: 148, idealHeight: 168, maxHeight: 180)
        }
    }
}

struct insetFactView_Previews: PreviewProvider {
    static let animals:[Animal] = Bundle.main.decode("animals.json")
    
    static var previews: some View {
        insetFactView(animal: animals[0])
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
