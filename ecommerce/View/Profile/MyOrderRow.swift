//
//  MyOrderRow.swift
//  ecommerce
//
//  Created by CodeForAny on 05/08/25.
//

import SwiftUI

struct MyOrderRow: View {
    var body: some View {
        
        VStack(alignment: .leading) {
            
            HStack {
                Text("Order No:123456789")
                    .s16
                    .foregroundStyle(Color.primaryText)
                    .maxLeft
                
                Text("05-08-2025")
                    .m14
                    .foregroundStyle(Color.placeholder)
                    
            }
            .padding(.bottom, 8)
            
            HStack {
                Text("Tracking number")
                    .r14
                    .foregroundStyle(Color.placeholder)
                    
                
                Text("05-08-2025")
                    .m14
                    .foregroundStyle(Color.primaryText)
                    .maxLeft
                    
            }
            .padding(.bottom, 2)
            
            HStack {
                Text("Quantity:")
                    .r14
                    .foregroundStyle(Color.placeholder)
                    
                
                Text("3")
                    .m14
                    .foregroundStyle(Color.primaryText)
                    .maxLeft
                
                Text("Total Amount:")
                    .r14
                    .foregroundStyle(Color.placeholder)
                    
                
                Text("112$")
                    .m14
                    .foregroundStyle(Color.primaryText)
                    
                    
            }
            .padding(.bottom, 8)
            
            HStack {
                Button {
                    
                } label: {
                    Text("Details")
                        .s16
                        .foregroundStyle(Color.primaryText)
                }
                .padding(8)
                .h15
                .frame(height: 35)
                .background( RoundedRectangle(cornerRadius: 17.5).stroke(lineWidth: 1) )
                
                
                Text("Delivered")
                    .s16
                    .foregroundStyle(Color.green)
                    .maxRight

            }
            
        }
        .padding(15)
        .background( Color.white )
        .cornerRadius(10, corner: .allCorners)
        .shadow( color: Color.black.opacity(0.07) ,radius: 2, y:1)
        
    }
}

#Preview {
    MyOrderRow()
        .padding(20)
}
