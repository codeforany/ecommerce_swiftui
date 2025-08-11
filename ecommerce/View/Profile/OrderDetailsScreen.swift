//
//  OrderDetailsScreen.swift
//  ecommerce
//
//  Created by CodeForAny on 11/08/25.
//

import SwiftUI

struct OrderDetailsScreen: View {
    
    @Environment(\.presentationMode) var mode: Binding<PresentationMode>
    
    var body: some View {
        ZStack{
            VStack(spacing: 0) {
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
                    
                    
                    Text("Order Details")
                        .s18
                        .foregroundStyle(Color.primaryText)
                        .maxCenter
                        
                    
                    Button {
                        
                    } label: {
                        Image(systemName: "magnifyingglass")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 20, height: 20)
                    }
                    .frame(width: 40, height: 40)

                    
                }
                .frame(height: 46)
                .h15
                .foregroundStyle( Color.primaryText )
                .padding(.top, .topInsets)
                .background( Rectangle().fill(Color.white).shadow(color: .black.opacity(0.2) ,radius: 1, y: 1) )
                
                ScrollView{
                    VStack {
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
                                
                            
                            Text("IW347552552552")
                                .m14
                                .foregroundStyle(Color.primaryText)
                                .maxLeft
                            
                            Text("Delivered")
                                .s16
                                .foregroundStyle(Color.green)
                                
                        }
                        .padding(.bottom, 2)
                        
                        
                        
                        Text("3 Items")
                            .s16
                            .foregroundStyle(Color.primaryText)
                            .maxLeft
                            .v8
                        
                        LazyVStack(spacing: 20) {
                            ForEach(0..<3, id:\.self) { i in
                                
                                
                                
                                
                                HStack {
                                    
                                    Image("sc1")
                                        .resizable()
                                        .scaledToFill()
                                        .frame(width: 104, height: 104)
                                    
                                        .clipped()
                                    
                                    VStack(alignment: .leading) {
                                        
                                        
                                        Text("Pullover")
                                            .s16
                                            .foregroundStyle(Color.primaryText)
                                            .padding(.top, 1)
                                        
                                        
                                        Text("Mango")
                                            .r14
                                            .foregroundStyle(Color.placeholder)
                                            .padding(.top, 1)
                                        
                                        
                                        HStack{
                                            Text("Color:")
                                                .r11
                                                .foregroundStyle(Color.placeholder)
                                            
                                            Text("L")
                                                .r11
                                                .foregroundStyle(Color.primaryText)
                                            
                                            Text("Size:")
                                                .r11
                                                .foregroundStyle(Color.placeholder)
                                            
                                            Text("L")
                                                .r11
                                                .foregroundStyle(Color.primaryText)
                                        }
                                        
                                        
                                        HStack {
                                            
                                            
                                            
                                            Text("Units:")
                                                .r11
                                                .foregroundStyle(Color.placeholder)
                                            
                                            Text("1")
                                                .r11
                                                .foregroundStyle(Color.primaryText)
                                            
                                            
                                            
                                            Spacer()
                                            
                                            Text("12$")
                                                .m14
                                                .foregroundStyle(Color.primaryText)
                                                .padding(.trailing, 15)
                                            
                                        }
                                        .padding(.top, 1)
                                    }
                                    .maxLeft
                                }
                                .background( Color.white )
                                .cornerRadius(10)
                                .shadow( color: Color.black.opacity(0.1) , radius: 2, y:1)
                             
                            }
                        }
                        
                        
                        Text("Order Information")
                            .s16
                            .foregroundStyle(Color.primaryText)
                            .maxLeft
                            .v8
                        
                        HStack {
                                                      
                            Text("Shipping Address:")
                                .r14
                                .foregroundStyle(Color.placeholder)
                                .frame(width: 140, alignment: .leading)
                                
                            
                            Text("3 Newbridge Court ,Chino Hills, CA 91709, United States")
                                .m14
                                .foregroundStyle(Color.primaryText)
                                .maxLeft
                            
                            
                           
                                
                                
                        }
                        .padding(.bottom, 8)
                        
                        
                        HStack {
                                                      
                            Text("Payment method:")
                                .r14
                                .foregroundStyle(Color.placeholder)
                                .frame(width: 140, alignment: .leading)
                                
                            
                            Text("112$")
                                .m14
                                .foregroundStyle(Color.primaryText)
                                .maxLeft
                            
                            
                           
                                
                                
                        }
                        .padding(.bottom, 8)
                        
                        
                        HStack {
                                                      
                            Text("Payment method:")
                                .r14
                                .foregroundStyle(Color.placeholder)
                                .frame(width: 140, alignment: .leading)
                                
                            
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
                        .padding(.bottom, 8)
                        
                        HStack {
                                                      
                            Text("Delivery method:")
                                .r14
                                .foregroundStyle(Color.placeholder)
                                .frame(width: 140, alignment: .leading)
                                
                            
                            Text("Fedex, 3 days, 15$")
                                .m14
                                .foregroundStyle(Color.primaryText)
                                .maxLeft
                            
                            
                           
                                
                                
                        }
                        .padding(.bottom, 8)
                        
                        HStack {
                                                      
                            Text("Discount:")
                                .r14
                                .foregroundStyle(Color.placeholder)
                                .frame(width: 140, alignment: .leading)
                                
                            
                            Text("10%, Personal promo code")
                                .m14
                                .foregroundStyle(Color.primaryText)
                                .maxLeft
                            
                            
                           
                                
                                
                        }
                        .padding(.bottom, 8)
                        
                        
                        HStack {
                                                      
                            Text("Total Amount:")
                                .r14
                                .foregroundStyle(Color.placeholder)
                                .frame(width: 140, alignment: .leading)
                                
                            
                            Text("112$")
                                .m14
                                .foregroundStyle(Color.primaryText)
                                .maxLeft
                            
                                
                        }
                        .padding(.bottom, 8)
                        
                        
                        HStack{
                            
                            RoundButton(title: "Reorder", type: .line) {
                                
                            }
                            
                            RoundButton(title: "Leave Feedback", type: .color) {
                                
                            }
                            
                        }
                        .padding(.vertical, 15)
                    }
                    .padding(20)
                }
            }
        }
        .navHide
        .background( Color.bg )
    }
}

#Preview {
    OrderDetailsScreen()
}
