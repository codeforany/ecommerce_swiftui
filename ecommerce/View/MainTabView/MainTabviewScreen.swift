//
//  MainTabviewScreen.swift
//  ecommerce
//
//  Created by CodeForAny on 02/06/25.
//

import SwiftUI

struct MainTabviewScreen: View {
    
    @State var selectTab: Int = 0
    
    var body: some View {
        ZStack {
            
            if( selectTab == 0 ) {
                HomeTab2Screen()
            }else if( selectTab == 1 ) {
                VStack {
                    Text("Shop")
                }
            }else if( selectTab == 2 ) {
                VStack {
                    Text("Bag")
                }
            }else if( selectTab == 3 ) {
                VStack {
                    Text("Fav")
                }
            }else {
                
                    VStack {
                        Text("Profile")
                    }
                
            }
            
            
            VStack {
                Spacer()
                
                HStack {
                    
                    TabButton(title: "Home", icon: "home_tab_u", selectIcon: "home_tab", isSelected: selectTab == 0) {
                        selectTab = 0
                    }
                    
                    TabButton(title: "Shop", icon: "shop_tab_u", selectIcon: "shop_tab", isSelected: selectTab == 1 ) {
                        selectTab = 1
                    }
                    
                    TabButton(title: "Bag", icon: "bag_tab_u", selectIcon: "bag_tab", isSelected: selectTab == 2) {
                        selectTab = 2
                    }
                    
                    TabButton(title: "Favorites", icon: "fav_tab_u", selectIcon: "fav_tab", isSelected: selectTab == 3) {
                        selectTab = 3
                    }
                    
                    TabButton(title: "Profile", icon: "profile_tab_u", selectIcon: "profile_tab", isSelected: selectTab == 4) {
                        selectTab = 4
                    }
                    
                }
                .t8
                .padding(.bottom, .bottomInsets)
                .h8
                .background( Color.white )
                .cornerRadius(10, corner: [.topLeft, .topRight])
                .shadow( color: Color.black.opacity(0.2) ,radius: 3, y: -2)
            }
            
            
        }
        .navHide
    }
}

#Preview {
    MainTabviewScreen()
}
