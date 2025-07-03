//
//  ProductDetailScreen.swift
//  ecommerce
//
//  Created by CodeForAny on 03/07/25.
//

import SwiftUI

struct ProductDetailScreen: View {
    @Environment(\.presentationMode) var mode: Binding<PresentationMode>
    
    var body: some View {
        ZStack {
            
            VStack(spacing:0){
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
                    
                    
                    Text("Short Dress")
                        .s18
                        .foregroundStyle(Color.primaryText)
                        .maxConter
                        
                    
                    Button {
                        
                    } label: {
                        Image(systemName: "square.and.arrow.up")
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
                
                ScrollView {
                    VStack(spacing: 0){
                        
                        
                        VStack {
                            
                        }
                        .frame(height: 300)
                        
                        
                        VStack{
                            
                            HStack{
                                Text("H&M")
                                    .s24
                                    .foregroundStyle(Color.primaryText)
                                    .maxLeft
                                
                                Text("$19.99")
                                    .s24
                                    .foregroundStyle(Color.primaryText)
                                    
                                
                            }
                            
                            Text("Short black dress")
                                .r11
                                .foregroundStyle(Color.placeholder)
                                .maxLeft
                            
                            HStack(spacing: 4) {
                                ForEach(0..<5) { index in
                                    Image(systemName: "star.fill")
                                        .resizable()
                                        .scaledToFit()
                                        .font(.system(size: 14))
                                        .frame(width: 15)
                                        .foregroundStyle(.yellow)
                                }
                                Text("(10)")
                                    .r14
                                    .foregroundStyle(Color.placeholder)
                                
                            }
                            .maxLeft
                            
                            
                            Text("Short dress in soft cotton jersey with decorative buttons down the front and a wide, frill-trimmed square neckline with concealed elastication. Elasticated seam under the bust and short puff sleeves with a small frill trim.")
                                .r14
                                .foregroundStyle(Color.primaryText)
                                .maxLeft
                                .v15
                            
                        }
                        .h20
                        .v15
                        
                        Divider()
                        Button {
                           
                        } label: {
                            
                            HStack{
                                Text("Item detials")
                                    .r16
                                    
                                    .maxLeft
                                
                                Image(systemName: "chevron.right")
                            }
                            
                        }
                        .foregroundStyle(Color.primaryText)
                        .h20
                        .v15
                        Divider()
                        Button {
                           
                        } label: {
                            
                            HStack{
                                Text("Shipping info")
                                    .r16
                                    
                                    .maxLeft
                                
                                Image(systemName: "chevron.right")
                            }
                            
                        }
                        .foregroundStyle(Color.primaryText)
                        .h20
                        .v15
                        Divider()
                        Button {
                           
                        } label: {
                            
                            HStack{
                                Text("Support")
                                    .r16
                                    
                                    .maxLeft
                                
                                Image(systemName: "chevron.right")
                            }
                            
                        }
                        .foregroundStyle(Color.primaryText)
                        .h20
                        .v15
                        Divider()
                        
                        
                    }
                }
                
                
                HStack{
                    RoundButton(title: "ADD TO CART") {
                        
                    }
                }.h15
                .v15
                .padding(.bottom, .bottomInsets + 15)
                .background( Rectangle().fill(Color.white).shadow(color: .black.opacity(0.2) ,radius: 1, y: -1) )
                
            }
            
            
        }
        .navHide
        .background( Color.bg )
    }
}

#Preview {
    ProductDetailScreen()
}
