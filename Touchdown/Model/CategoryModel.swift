//
//  CategoryModel.swift
//  Touchdown
//
//  Created by user on 13.06.2022.
//

import Foundation
struct Category: Codable, Identifiable {
    let id: Int
    let name: String
    let image: String
}
