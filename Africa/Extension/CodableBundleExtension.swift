//
//  CodableBundleExtension.swift
//  Africa
//
//  Created by Maxim Mitin on 19.09.21.
//

import SwiftUI

extension Bundle {
    func decode<T: Codable>(_ file: String) -> T {
        guard let url = self.url(forResource: file, withExtension: nil) else {
            fatalError("Failed to locate \(file) bundle")
        }
            
        guard let data = try? Data(contentsOf: url) else {
                fatalError("Failed to load file from bundle")
            }
        let decoder = JSONDecoder()
        
        guard let loaded = try? decoder.decode(T.self, from: data) else {
            fatalError("Failed to decode \(file)")
        }
        
        return loaded
        }
    }
