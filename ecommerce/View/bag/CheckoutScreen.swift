//
//  CheckoutScreen.swift
//  ecommerce
//
//  Created by CodeForAny on 28/07/25.
//

import SwiftUI

struct CheckoutScreen: View {
    @Environment(\.presentationMode) var mode: Binding<PresentationMode>
    
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
                    
                    
                    Text("Checkout")
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
                    
                    VStack(spacing: 15){
                        
                        Text("Shipping Address")
                            .s18
                            .maxLeft
                            .v8
                        
                        
                        VStack(spacing: 10){
                            HStack{
                                
                                
                                Text("Jane Doe")
                                    .m14
                                    .maxLeft
                                
                                Button {
                                    
                                } label: {
                                    Text("Change")
                                        .m14
                                }
                                .foregroundStyle(Color.primaryApp)
                                
                                
                                
                            }
                            
                            Text("3 Newbridge Court\nChino Hills, CA 91709, United States")
                                .r14
                                .maxLeft
                        }
                        .padding(15)
                        .background( RoundedRectangle(cornerRadius: 10).fill(Color.white).shadow(color: .black.opacity(0.2) ,radius: 1, y: 1) )
                        
                        HStack{
                            
                            
                            Text("Payment")
                                .m14
                                .maxLeft
                            
                            Button {
                                
                            } label: {
                                Text("Change")
                                    .m14
                            }
                            .foregroundStyle(Color.primaryApp)
                            
                            
                            
                        }
                        .t15
                        
                        
                        HStack{
                            
                            
                            Image("mastercard")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 60, height: 30)
                                .h8
                                .v8
                                .background( RoundedRectangle(cornerRadius: 10).fill(Color.white).shadow(color: .black.opacity(0.2) ,radius: 1, y: 1) )
                            
                            Text("**** **** **** 3947")
                                .r14
                                .maxLeft
                            
                            
                            
                        }
                        
                            
                        Text("Delivery method")
                            .s18
                            .maxLeft
                            .padding(.top, 30)
                        
                        
                        
                        
                        
                    }
                    .padding(20)
                    
                    
                    ScrollView(.horizontal, showsIndicators: false){
                        
                        
                        LazyHStack(spacing: 20){
                            ForEach(0..<3, id:\.self){_ in
                            
                                VStack(spacing: 10){
                                    
                                    
                                    Image(
                                        "fedex"
                                    )
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width: 70, height: 30)
                                    
                                    Text("2-3 days")
                                        .r14
                                        .maxLeft
                                        .foregroundStyle(Color.placeholder)
                                }
                                .padding(15)
                                .background( RoundedRectangle(cornerRadius: 10).fill(Color.white).shadow(color: .black.opacity(0.2) ,radius: 1, y: 1) )
                                
                            }
                        }
                        .v8
                        .h20
                        
                        
                        
                    }
                    
                    
                    VStack(spacing: 15){
                        HStack{
                            Text("Order:")
                                .m14
                                .foregroundStyle(Color.placeholder)
                                .maxLeft
                            
                            Text("112$")
                                .s16
                                .foregroundStyle(Color.primaryText)
                                
                                
                        }
                        
                        HStack{
                            Text("Delivery:")
                                .m14
                                .foregroundStyle(Color.placeholder)
                                .maxLeft
                            
                            Text("15$")
                                .s16
                                .foregroundStyle(Color.primaryText)
                                
                                
                        }
                        
                        
                        HStack{
                            Text("Summary:")
                                .s16
                                .foregroundStyle(Color.placeholder)
                                .maxLeft
                            
                            Text("127$")
                                .s18
                                .foregroundStyle(Color.primaryText)
                                
                                
                        }
                    }
                    .h20
                    .padding(.vertical, 35)
                    
                    
                    
                    
                    RoundButton(title: "SUBMIT ORDER"){
                        
                    }
                    .h20
                    
                    
                }
                .background( Color.bg)
            }
            
        }
        .navHide
    }
}

#Preview {
    CheckoutScreen()
}
