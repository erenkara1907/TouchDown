//
//  TitleView.swift
//  Touchdown
//
//  Created by user on 13.06.2022.
//

import SwiftUI

struct TitleView: View {
    // MARK: - PROPERTIES
    var title: String
    
    // MARK: - BODY
    var body: some View {
        HStack {
            Text(title)
                 .font(.largeTitle)
            .fontWeight(.heavy)
            
            Spacer()
        } // HStack
        .padding(.horizontal)
        .padding(.top, 15.0)
        .padding(.bottom, 10.0)
    }
}

// MARK: - PREVIEW
struct TitleView_Previews: PreviewProvider {
    static var previews: some View {
        TitleView(title: "Helmet")
            .previewLayout(.sizeThatFits)
            .background(colorBackground)
    }
}
