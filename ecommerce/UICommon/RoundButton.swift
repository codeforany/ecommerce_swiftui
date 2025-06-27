//
//  RoundButton.swift
//  ecommerce
//
//  Created by CodeForAny on 29/05/25.
//

import SwiftUI

enum RoundButtonStyle {
    case `color`
    case `line`
}

struct RoundButton: View {
    
    @State var title: String = ""
    @State var type: RoundButtonStyle = .color
    var onPressed: (()->())?
    
    var body: some View {
         
        HStack {
            
            Text(title)
                .m14
                .foregroundColor( type == .line ? Color.primaryText : .white)
                .maxConter
            
        }
        .padding()
        .frame(height: 48)
        .background( type == .color ? Color.primaryApp : Color.white )
        .cornerRadius(25)
        .onTapGesture {
            onPressed?()
        }
        .background( RoundedRectangle(cornerRadius: 25)
            .fill( Color.clear  )
            .stroke( type == .line ? Color.primaryText : Color.clear, lineWidth: 1  ) )
        .shadow(color: type == .color ? .primaryApp.opacity(0.3) : .clear, radius: 2,y: 2)
    }
}

#Preview {
    RoundButton(title: "Button1")
        .h
}
