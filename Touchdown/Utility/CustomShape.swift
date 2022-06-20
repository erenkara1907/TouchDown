//
//  CustomShape.swift
//  Touchdown
//
//  Created by user on 13.06.2022.
//

import SwiftUI

struct CustomShape: Shape {
    func path(in rect: CGRect) -> Path {
        let path = UIBezierPath(roundedRect: rect, byRoundingCorners: [.topLeft, .topRight], cornerRadii: CGSize(width: 35.0, height: 35.0))
        
        return Path(path.cgPath)
    }
}

// MARK: - PREVIEW
struct CustomShape_Previews: PreviewProvider {
    static var previews: some View {
        CustomShape()
            .previewLayout(.fixed(width: 428.0, height: 120.0))
            .padding()
    }
}
