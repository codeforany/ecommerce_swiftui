//
//  RoundIconButton.swift
//  ecommerce
//
//  Created by CodeForAny on 29/05/25.
//

import SwiftUI

struct RoundIconButton: View {
    @State var icon: String = ""
    var onPressed: (()->())?
    
    var body: some View {
         
        Image( icon )
            .resizable()
            .scaledToFit()
            .frame(width: 25, height: 25)
        .padding()
        .frame(width: 92,height: 64)
        .background(Color.white)
        .cornerRadius(24)
        .onTapGesture {
            onPressed?()
        }
        .shadow(color: .black.opacity(0.2), radius: 2,y: 2)
    }
}

#Preview {
    RoundIconButton(icon: "google")
}
