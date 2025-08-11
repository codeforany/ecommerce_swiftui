//
//  MyOrdersScreen.swift
//  ecommerce
//
//  Created by CodeForAny on 05/08/25.
//

import SwiftUI

struct MyOrdersScreen: View {
    
    @Environment(\.presentationMode) var mode: Binding<PresentationMode>
    @State var selectTab: Int = 0
    @State var showDetails: Bool = false
    
    var body: some View {
        ZStack{
            VStack(spacing: 0){
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
                    
                    Spacer()
                    
                    
                    Button {
                        
                    } label: {
                        Image(systemName: "magnifyingglass")
                            .resizable()
                            .frame(width: 25, height: 25)
                    }
                    
                    

                    
                }
                .foregroundStyle(Color.primaryText)
                .h20
                .padding(.top, .topInsets + 8)
                
                Text("My Orders")
                    .b34
                    .foregroundStyle(Color.primaryText)
                    .maxLeft
                    .h20
                
                HStack{
                    
                    Button {
                        selectTab = 0
                    } label: {
                        Text("Delivered")
                            .s16
                            .foregroundStyle( selectTab == 0 ? Color.white : Color.primaryText )
                    }
                    .frame(maxWidth: .infinity, alignment: .center)
                    .frame(height: 35)
                    .background( selectTab == 0 ? Color.primaryText : Color.clear )
                    .cornerRadius(17.5, corner: .allCorners)
                    
                    Button {
                        selectTab = 1
                    } label: {
                        Text("Processing")
                            .s16
                            .foregroundStyle( selectTab == 1 ? Color.white : Color.primaryText )
                    }
                    .frame(maxWidth: .infinity, alignment: .center)
                    .frame(height: 35)
                    .background( selectTab == 1 ? Color.primaryText : Color.clear )
                    .cornerRadius(17.5, corner: .allCorners)
                    
                    Button {
                        selectTab = 2
                    } label: {
                        Text("Cancelled")
                            .s16
                            .foregroundStyle( selectTab == 2 ? Color.white : Color.primaryText )
                    }
                    .frame(maxWidth: .infinity, alignment: .center)
                    .frame(height: 35)
                    .background( selectTab == 2 ? Color.primaryText : Color.clear )
                    .cornerRadius(17.5, corner: .allCorners)

                    
                }
                .v8
                .h20
                
                
                ScrollView{
                    LazyVStack(spacing: 20){
                        ForEach(0..<5, id:\.self) { index in
                            MyOrderRow()
                                .onTapGesture {
                                    showDetails = true
                                }
                        }
                    }
                    .padding(20)
                }
            }
        }
        .bgNavLink(content: OrderDetailsScreen(), isActive: $showDetails)
        .navHide
    }
}

#Preview {
    MyOrdersScreen()
}
