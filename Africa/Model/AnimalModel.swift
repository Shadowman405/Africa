//
//  Animal<odel.swift
//  Africa
//
//  Created by Maxim Mitin on 19.09.21.
//

import SwiftUI

struct Animal: Codable, Identifiable {
    let id: String
    let name: String
    let headline: String
    let description: String
    let link: String
    let image: String
    let gallery: [String]
    let fact: [String]
}
