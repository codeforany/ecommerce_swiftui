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
    @State var icon: String = ""
    @State var height: CGFloat = 48.0
    @State var type: RoundButtonStyle = .color
    var onPressed: (()->())?
    
    var body: some View {
         
        HStack {
            
            
            HStack{
                if icon != "" {
                    Image(systemName: icon)
                        .resizable()
                        .scaledToFit()
                        .frame(width: 18)
                }
                Text(title)
                    .m14
                    
            }
            .foregroundColor( type == .line ? Color.primaryText : .white)
            .maxCenter
            
        }
        
        .padding()
        .frame(height: height)
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
