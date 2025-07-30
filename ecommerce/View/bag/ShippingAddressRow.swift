//
//  ShippingAddressRow.swift
//  ecommerce
//
//  Created by CodeForAny on 30/07/25.
//

import SwiftUI

struct ShippingAddressRow: View {
    @State var isSelect: Bool = false
    var onPress: (() -> Void)?
    var onCheckPress: (() -> Void)?
    
    var body: some View {
        VStack(spacing: 10){
            HStack{
                
                
                Text("Jane Doe")
                    .m14
                    .maxLeft
                
                Button {
                    
                } label: {
                    Text("Edit")
                        .m14
                }
                .foregroundStyle(Color.primaryApp)
                
                
                
            }
            
            Text("3 Newbridge Court\nChino Hills, CA 91709, United States")
                .r14
                .maxLeft
            
            HStack{
                
                
                Button {
                    onCheckPress?()
                } label: {
                    Image(systemName: isSelect ?  "checkmark.square.fill" : "square")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 25, height: 25)
                    
                    Text("Use as the shipping address")
                        .r14
                        .maxLeft
                }
                .foregroundStyle(Color.primaryText)

                
                
            }
        }
        .padding(15)
        .background( RoundedRectangle(cornerRadius: 10).fill(Color.white).shadow(color: .black.opacity(0.2) ,radius: 1, y: 1) )
        .onTapGesture {
            onPress?()
        }
    }
}

#Preview {
    ShippingAddressRow()
}
