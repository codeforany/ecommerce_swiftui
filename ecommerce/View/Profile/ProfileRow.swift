//
//  ProfileRow.swift
//  ecommerce
//
//  Created by CodeForAny on 01/08/25.
//

import SwiftUI

struct ProfileRow: View {
    @State var title: String = ""
    @State var subtitle: String = ""
    var onPressed: (() -> Void)?
    
    var body: some View {
        VStack(spacing: 0){
            
            HStack{
                VStack(spacing: 8) {
                    Text(title)
                        .s16
                        .lineLimit(1)
                        .maxLeft
                        .foregroundStyle(Color.primaryText)
                    Text(subtitle)
                        .r11
                        .foregroundStyle(Color.placeholder)
                        .maxLeft
                }
                
                Image(systemName: "chevron.forward")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 10, height: 10)
                    .foregroundStyle(Color.placeholder)
            }
            .h20
            .v8
            
            Divider()
                
        }
        .onTapGesture {
            onPressed?()
        }
    }
}

#Preview {
    ProfileRow(title: "Title", subtitle: "Subtitle")
}
