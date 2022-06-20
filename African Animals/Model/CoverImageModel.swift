//
//  CoverImageModel.swift
//  African Animals
//
//  Created by Prince Bottoman on 2022/06/19.
//

import SwiftUI

/* By using codable and identifiable we are actually allowing our
 class/struct to be a usable model in decoding a json file and
 getting the contents of the decoded json file. OOP
 */

class CoverImage: Codable, Identifiable {
    let id: Int
    let name: String
}
