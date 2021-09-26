//
//  AnimakGridItemView.swift
//  Africa
//
//  Created by Maxim Mitin on 26.09.21.
//

import SwiftUI

struct AnimakGridItemView: View {
    
    let animal: Animal
    
    var body: some View {
        Image(animal.image)
            .resizable()
            .scaledToFit()
            .cornerRadius(12)
    }
}

struct AnimakGridItemView_Previews: PreviewProvider {
    static var previews: some View {
        let animals: [Animal] = Bundle.main.decode("animals.json")
        
        AnimakGridItemView(animal: animals[0])
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
