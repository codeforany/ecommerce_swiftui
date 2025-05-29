//
//  RoundButton.swift
//  ecommerce
//
//  Created by CodeForAny on 29/05/25.
//

import SwiftUI

struct RoundButton: View {
    
    @State var title: String = ""
    var onPressed: (()->())?
    
    var body: some View {
         
        HStack {
            
            Text(title)
                .m14
                .foregroundColor(.white)
                .maxConter
            
        }
        .padding()
        .frame(height: 48)
        .background(Color.primaryApp)
        .cornerRadius(25)
        .onTapGesture {
            onPressed?()
        }
        .shadow(color: .primaryApp.opacity(0.3), radius: 2,y: 2)
    }
}

#Preview {
    RoundButton(title: "Button1")
        .h
}
