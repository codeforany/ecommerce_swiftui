//
//  RatingBarViewRow.swift
//  ecommerce
//
//  Created by CodeForAny on 09/07/25.
//

import SwiftUI

struct RatingBarViewRow: View {
    @State var rating: Double = 0
    @State var progress:Double = 0.5
    @State var rate:Int = 0
    
    var body: some View {
        HStack(spacing: 15) {
            RatingBarView(rating: 5.0 - rating, selectColor: .clear, unSelectColor: .yellow)
            
            ProgressView(value: progress)
                .tint(Color.primaryApp)
            Text("\( rate )")
                .r14
                .foregroundStyle(Color.placeholder)
            
        }
    }
}

#Preview {
    RatingBarViewRow()
}
