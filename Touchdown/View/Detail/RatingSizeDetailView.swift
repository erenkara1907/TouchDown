//
//  RatingSizeDetailView.swift
//  Touchdown
//
//  Created by user on 13.06.2022.
//

import SwiftUI

struct RatingSizeDetailView: View {
    // MARK: - PROPERTIES
    let sizes: [String] = ["XS", "S", "M", "L", "XL"]
    
    // MARK: - BODY
    var body: some View {
        HStack(alignment: .top, spacing: 3.0, content: {
            // Ratings
            VStack(alignment: .leading, spacing: 3.0, content: {
                Text("Ratings")
                    .font(.footnote)
                    .fontWeight(.semibold)
                    .foregroundColor(colorGray)
                
                HStack(alignment: .center, spacing: 3.0, content: {
                    ForEach(1...5, id: \.self) { item in
                        Button(action: {}, label: {
                            Image(systemName: "star.fill")
                                .frame(width: 28.0, height: 28.0, alignment: .center)
                                .background(colorGray.cornerRadius(5.0))
                                .foregroundColor(.white)
                        })
                    }
                }) // HStack
            }) // VStack
            
            Spacer()
            
            // Sizes
            VStack(alignment: .trailing, spacing: 3.0, content: {
                Text("Sizes")
                    .font(.footnote)
                    .fontWeight(.semibold)
                    .foregroundColor(colorGray)
                
                HStack(alignment: .center, spacing: 5.0, content: {
                    ForEach(sizes, id: \.self) { size in
                        Button(action: {}, label: {
                            Text(size)
                                .font(.footnote)
                                .fontWeight(.heavy)
                                .foregroundColor(colorGray)
                                .frame(width: 28.0, height: 28.0, alignment: .center)
                                .background(Color.white.cornerRadius(5.0))
                                .background(
                                    RoundedRectangle(cornerRadius: 5.0)
                                        .stroke(colorGray, lineWidth: 2.0)
                                )
                        }) // button
                    } // Loop
                }) // HStack
            }) // VStack
            
        }) // HStack
    }
}

// MARK: - PREVIEW
struct RatingSizeDetailView_Previews: PreviewProvider {
    static var previews: some View {
        RatingSizeDetailView()
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
