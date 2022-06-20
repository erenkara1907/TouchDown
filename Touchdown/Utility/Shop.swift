//
//  Shop.swift
//  Touchdown
//
//  Created by user on 13.06.2022.
//

import Foundation

class Shop : ObservableObject {
    @Published var showingProduct: Bool = false
    @Published var selectedProduct: Product? = nil
}
