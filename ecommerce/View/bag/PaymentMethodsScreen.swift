//
//  PaymentMethodsScreen.swift
//  ecommerce
//
//  Created by CodeForAny on 21/08/25.
//

import SwiftUI

struct PaymentMethodsScreen: View {
    @Environment(\.presentationMode) var mode:Binding<PresentationMode>
    var body: some View {
        ZStack {
            VStack(spacing: 2){
                
                HStack{
                    
                    Button {
                        mode.wrappedValue.dismiss()
                    } label: {
                        Image(systemName: "chevron.left")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 20, height: 20)
                    }
                    .frame(width: 40, height: 40)
                    
                    
                    Text("Payment methods")
                        .s18
                        .foregroundStyle(Color.primaryText)
                        .maxCenter
                    
                    
                    VStack{
                        
                    }
                    .frame(width: 40)
                    
                    
                }
                .frame(height: 46)
                .h15
                .foregroundStyle( Color.primaryText )
                .padding(.top, .topInsets)
                .background( Rectangle().fill(Color.white).shadow(color: .black.opacity(0.2) ,radius: 1, y: 1) )
                
                ScrollView{
                    
                    VStack{
                        
                        Text("Your payment cards")
                            .s18
                            .maxLeft
                            .h20
                            .v15
                        
                     
                        
                        LazyVStack(spacing: 20){
                            ForEach(0..<2, id: \.self){ index in
                                
                                
                                CardRow(isSelect: index == 0, onPress: {
                                    
                                } , onCheckPress:  {
                                    
                                })
                                
                            }
                            .h20
                        }
                    }
                }
            }
            
            VStack{
                
                Spacer()
                
                HStack{
                    Spacer()
                    
                    Button {
                        
                    } label: {
                        Image(systemName: "plus")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 25, height: 25)
                    }
                    .foregroundStyle(Color.white)
                    .frame(width: 50, height: 50, alignment: .center)
                    .background( RoundedRectangle(cornerRadius: 25).fill( Color.primaryText ).shadow(radius: 2) )
                    .padding( .trailing, 25 )
                    .padding(.bottom, .bottomInsets + 25)

                }
                
            }
        }
        .navHide
        .background( Color.bg )
    }
}

#Preview {
    PaymentMethodsScreen()
}
