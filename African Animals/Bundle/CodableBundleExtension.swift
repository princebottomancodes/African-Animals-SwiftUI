//
//  CodableBundleExtension.swift
//  African Animals
//
//  Created by Prince Bottoman on 2022/06/19.
//

import Foundation

/* To make this bundle usable globally regardless of the type,
 we make it a generic type of bundle by adding type T as placement for
 any type.
*/
extension Bundle {
    func decode<T: Codable>(_ file: String) -> T {
        
        // 1. Locate the json file in the app files
        guard let url = self.url(forResource: file, withExtension: nil) else {
            fatalError("Failed to locate \(file) in the app bundle.")
        }
        
        // 2. Create a property for the data.
        guard let data = try? Data(contentsOf: url) else {
            fatalError("Failed to load data in the \(file)")
        }
        
        // 3. create a json decoder
        let decoder = JSONDecoder()
        
        // 4. Create a property for the decoded data
        guard let loadedData = try? decoder.decode(T.self, from: data) else {
            fatalError("Failed to decode data of the \(file)")
        }
        
        // 5. Load the data
        return loadedData
    }
 }
