//
//  VideoModel.swift
//  Africa
//
//  Created by Maxim Mitin on 21.09.21.
//

import Foundation

struct Video: Codable, Identifiable {
    let id: String
    let name: String
    let headline: String
    
    var thumbnail: String {
        "video-\(id)"
    }
}
