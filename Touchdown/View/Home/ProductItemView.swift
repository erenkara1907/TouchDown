//
//  ProductItemView.swift
//  Touchdown
//
//  Created by user on 13.06.2022.
//

import SwiftUI

struct ProductItemView: View {
    // MARK: - PROPERTY
    let product: Product
    
    // MARK: - BODY
    var body: some View {
        VStack(alignment: .leading, spacing: 6.0, content: {
            // Photo
            ZStack {
                Image(product.image)
                    .resizable()
                    .scaledToFit()
                    .padding(10.0)
            } // ZStack
            .background(Color(red: product.red, green: product.green, blue: product.blue))
            .cornerRadius(12.0)
            
            // Name
            Text(product.name)
                .font(.title3)
                .fontWeight(.black)
            
            // Price
            Text(product.formattedPrice)
                .fontWeight(.semibold)
                .foregroundColor(.gray)
        })
    }
}

// MARK: - PREVIEW
struct ProductItemView_Previews: PreviewProvider {
    static var previews: some View {
        ProductItemView(product: products[0])
            .previewLayout(.fixed(width: 200.0, height: 300.0))
            .padding()
            .background(colorBackground)
    }
}
