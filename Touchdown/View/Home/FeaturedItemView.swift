//
//  FeaturedItemView.swift
//  Touchdown
//
//  Created by user on 13.06.2022.
//

import SwiftUI

struct FeaturedItemView: View {
    // MARK: - PROPERTY
    let player: Player
    
    // MARK: - BODY
    var body: some View {
        Image(player.image)
            .resizable()
            .scaledToFit()
            .cornerRadius(12.0)
    }
}

// MARK: - PREVIEW
struct FeaturedItemView_Previews: PreviewProvider {
    static var previews: some View {
        FeaturedItemView(player: players[0])
            .previewLayout(.sizeThatFits)
            .padding()
            .background(colorBackground)
    }
}
