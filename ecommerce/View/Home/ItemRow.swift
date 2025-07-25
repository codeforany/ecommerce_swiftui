//
//  ItemRow.swift
//  ecommerce
//
//  Created by CodeForAny on 05/06/25.
//

import SwiftUI

struct ItemRow: View {
    
    @State var isOffer: Bool = false
    
    var body: some View {
        
        ZStack(alignment: .topLeading) {
            VStack(alignment: .leading) {
                ZStack(alignment: .topLeading) {
                    Image("1")
                        .resizable()
                        .scaledToFill()
                        .frame(width: 150, height: 180)
                    
                    
                    Text( isOffer ? "20%" : "New")
                        .m14
                        .foregroundStyle(.white)
                        .padding(8)
                        .background( isOffer ? Color.primaryApp  :  Color.black )
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
                    .padding(.top, 1)
                
                
                Text("Evening Dress")
                    .s16
                    .foregroundStyle(Color.primaryText)
                    .padding(.top, 1)
                
                HStack {
                    
                    Text("$15")
                        .m14
                        .foregroundStyle(Color.placeholder)
                    
                    Text("$12")
                        .m14
                        .foregroundStyle(Color.primaryApp)
                    
                }
                .padding(.top, 1)
            }
                
            
            Button {
                
            } label: {
                Image(systemName: "heart")
                    .padding(8)
            }
            .foregroundStyle(Color.placeholder)
            .frame(width: 40, height: 40)
            .background( Color.white )
            .cornerRadius(20)
            .shadow(radius: 2)
            .maxRight
            .padding(.top, 160)

            
        }
        
    }
}

#Preview {
    ItemRow()
        .frame(width: 150, height: 220)
}
