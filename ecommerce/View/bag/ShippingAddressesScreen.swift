//
//  ShippingAddressesScreen.swift
//  ecommerce
//
//  Created by CodeForAny on 30/07/25.
//

import SwiftUI

struct ShippingAddressesScreen: View {
    @Environment(\.presentationMode) var mode: Binding<PresentationMode>
    @State var isSelectAdd = false
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
                    
                    
                    Text("Shipping Addresses")
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
                    
                    LazyVStack (spacing: 15) {
                        
                        ForEach(0..<3, id:\.self) {
                            index in
                            
                            ShippingAddressRow( isSelect: index == 0) {
                                
                            } onCheckPress: {
                                
                            }

                        }
                        
                    }
                    .padding(20)
                    
                    
                }
                .background( Color.bg)
            }
            
            
            
            VStack{
                
                Spacer()
                
                HStack{
                    Spacer()
                    
                    Button {
                        isSelectAdd = true
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
        .bgNavLink(content: AddShippingAddressScreen()  , isActive: $isSelectAdd)
        .navHide
    }
}

#Preview {
    ShippingAddressesScreen()
}
