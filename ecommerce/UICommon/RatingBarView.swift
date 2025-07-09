//
//  RatingBarView.swift
//  ecommerce
//
//  Created by CodeForAny on 09/07/25.
//

import SwiftUI

struct RatingBarView: View {
    @State var rating: Double = 0
    @State var selectColor: Color = .yellow
    @State var unSelectColor: Color = .gray
    var body: some View {
        HStack(spacing: 4){
            ForEach(0..<5) { index in
                Image(systemName: "star.fill")
                    .resizable()
                    .scaledToFit()
                    .font(.system(size: 14))
                    .frame(width: 15)
                    .foregroundStyle( Double(index) < rating ?  selectColor : unSelectColor )
            }
        }
        
    }
}

#Preview {
    RatingBarView(rating: 4)
}
