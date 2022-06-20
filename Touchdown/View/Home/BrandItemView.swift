//
//  BrandItemView.swift
//  Touchdown
//
//  Created by user on 13.06.2022.
//

import SwiftUI

struct BrandItemView: View {
    // MARK: - PROPERTY
    let brand: Brand
    
    // MARK: - BODY
    var body: some View {
        Image(brand.image)
            .resizable()
            .scaledToFit()
            .padding()
            .background(Color.white.cornerRadius(12.0))
            .background(
                RoundedRectangle(cornerRadius: 12.0)
                    .stroke(Color.gray, lineWidth: 1.0)
            )
    }
}

// MARK: - PREVIEW
struct BrandItemView_Previews: PreviewProvider {
    static var previews: some View {
        BrandItemView(brand: brands[0])
            .previewLayout(.sizeThatFits)
            .padding()
            .background(colorBackground)
    }
}
