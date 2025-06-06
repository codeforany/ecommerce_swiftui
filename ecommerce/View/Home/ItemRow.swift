//
//  ItemRow.swift
//  ecommerce
//
//  Created by CodeForAny on 05/06/25.
//

import SwiftUI

struct ItemRow: View {
    var body: some View {
        VStack(alignment: .leading) {
            ZStack(alignment: .topLeading) {
                Image("1")
                    .resizable()
                    .scaledToFill()
                    .frame(width: 150, height: 180)
                
                
                Text("New")
                    .m14
                    .foregroundStyle(.white)
                    .padding(8)
                    .background( Color.black )
                    .cornerRadius(20)
                    .h8
                    .t8
                
            
            }
            .cornerRadius(10)
            .clipped()
            
            
            HStack(spacing: 4) {
                ForEach(0..<5) { index in
                    Image(systemName: "star.fill")
                        .resizable()
                        .scaledToFit()
                        .font(.system(size: 14))
                        .foregroundStyle(.yellow)
                }
                Text("(10)")
                    .r14
                    .foregroundStyle(Color.placeholder)
                
            }
            
            Text("Dorothy Perkins")
                .r11
                .foregroundStyle(Color.placeholder)
            
            
            Text("Evening Dress")
                .s16
                .foregroundStyle(Color.primaryText)
            
            HStack {
                
                Text("$15")
                    .m14
                    .foregroundStyle(Color.placeholder)
                
                Text("$12")
                    .m14
                    .foregroundStyle(Color.primaryApp)
                
            }
        }
    }
}

#Preview {
    ItemRow()
}
