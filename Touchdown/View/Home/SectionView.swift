//
//  SectionView.swift
//  Touchdown
//
//  Created by user on 13.06.2022.
//

import SwiftUI

struct SectionView: View {
    // MARK: - PROPERTIES
    @State var rotateClockwise: Bool
    
    // MARK: - BODY
    var body: some View {
        VStack(spacing: 0) {
            Spacer()
            
            Text("Categories".uppercased())
                .font(.footnote)
                .fontWeight(.bold)
                .foregroundColor(.white)
                .rotationEffect(Angle(degrees: rotateClockwise ? 90 : -90))
            
            Spacer()
        } // VStack
        .background(colorGray.cornerRadius(12.0))
        .frame(width: 85.0)
    }
}

// MARK: - PREVIEw
struct SectionView_Previews: PreviewProvider {
    static var previews: some View {
        SectionView(rotateClockwise: false)
            .previewLayout(.fixed(width: 120.0, height: 240.0))
            .padding()
            .background(colorBackground)
    }
}
