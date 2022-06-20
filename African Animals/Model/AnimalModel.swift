//
//  AnimalModel.swift
//  African Animals
//
//  Created by Prince Bottoman on 2022/06/20.
//

import SwiftUI


/* By using codable and identifiable we are actually allowing our
 class/struct to be a usable model in decoding a json file and
 getting the contents of the decoded json file.
 */

class Animal: Codable, Identifiable {
//    All the props here must correspond with the json KEY.
    let id: String
    let name: String
    let headline: String
    let description: String
    let link: String
    let image: String
    let gallery: [String]
    let fact: [String]
}
