//
//  PofileTabScreen.swift
//  ecommerce
//
//  Created by CodeForAny on 01/08/25.
//

import SwiftUI

struct ProfileTabScreen: View {
    
    @State var showMyOrders: Bool = false
    
    var body: some View {
        ZStack{
            VStack{
                HStack{
                    
                    Spacer()
                    
                    
                    Button {
                        
                    } label: {
                        Image(systemName: "magnifyingglass")
                            .resizable()
                            .frame(width: 25, height: 25)
                    }
                    .foregroundStyle(Color.primaryText)
                    .h20

                    
                }
                .padding(.top, .topInsets + 8)
                ScrollView {
                    
                    VStack{
                        
                        VStack{
                            
                            Text("My Profile")
                                .b34
                                .maxLeft
                            
                            HStack(spacing: 15){
                                Image("1")
                                    .resizable()
                                    .scaledToFill()
                                    .frame(width: 70, height: 70, alignment: .center)
                                    .cornerRadius(35, corner: .allCorners)
                                
                                VStack(alignment: .leading){
                                    Text("John Doe")
                                        .s18
                                        .lineLimit(1)
                                        .maxLeft
                                    Text("johndoe@example.com")
                                        .r14
                                        
                                        .foregroundStyle(Color.placeholder)
                                }
                                .maxLeft
                            }
                            
                        }
                        .h20
                        .v15
                        
                        
                        ProfileRow(title: "My orders", subtitle: "Already have 12 orders") {
                            showMyOrders = true
                        }
                        
                        ProfileRow(title: "Shipping addresses", subtitle: "3 ddresses")
                        
                        ProfileRow(title: "Payment methods", subtitle: "Visa  **34")
                        ProfileRow(title: "Promocodes", subtitle: "You have special promocodes")
                        ProfileRow(title: "My reviews", subtitle: "Reviews for 4 items")
                        
                        ProfileRow(title: "Settings", subtitle: "Notifications, password")
                        
                        
                        
                    }
                    
                }
            }
        }
        .bgNavLink(content: MyOrdersScreen(), isActive: $showMyOrders)
        .navHide
    }
    

}

#Preview {
    
    NavigationView {
        ProfileTabScreen()
    }
    
    
}
