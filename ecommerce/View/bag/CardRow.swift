//
//  CardRow.swift
//  ecommerce
//
//  Created by CodeForAny on 21/08/25.
//

import SwiftUI

struct CardRow: View {
    @State var isSelect: Bool = false
    var onPress: (() -> Void)?
    var onCheckPress: (() -> Void)?
    
    var body: some View {
        VStack{
            
            ZStack{
                
                Image("card")
                    .resizable()
                    .scaledToFit()
                    .frame(width: .infinity)
                
                VStack{
                    
                    Text("****   ****   ****   1234")
                        .font(.customfont(.regular, fontSize: 24))
                        .foregroundStyle(Color.whiteText)
                        .maxLeft
                        .padding(.top, 30)
                    
                    
                    HStack{
                        
                        VStack{
                            
                            Text("Card Holder Name")
                                .r11
                                .foregroundStyle(Color.whiteText)
                                .maxLeft
                            
                            
                            Text("Code For Any")
                                .s16
                                .foregroundStyle(Color.whiteText)
                                .maxLeft
                            
                        }
                        
                        
                        VStack{
                            
                            Text("Expiry Date")
                                .r11
                                .foregroundStyle(Color.whiteText)
                                
                            
                            
                            Text("11/30")
                                .s16
                                .foregroundStyle(Color.whiteText)
                                
                            
                        }
                        
                        Image("mastercard")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 40)
                        
                    }
                    .padding(.top, 20)
                    
                }
                .padding(.horizontal, 40)
                
            }
            .onTapGesture {
                onPress?()
            }
            
            Button {
                onCheckPress?()
            } label: {
                Image(systemName: isSelect ?  "checkmark.square.fill" : "square")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 25, height: 25)
                
                Text("Use as default payment method")
                    .r14
                    .maxLeft
            }
            .foregroundStyle(Color.primaryText)
        }
    }
}

#Preview {
    CardRow()
}
