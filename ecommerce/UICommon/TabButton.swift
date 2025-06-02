//
//  TabButton.swift
//  ecommerce
//
//  Created by CodeForAny on 02/06/25.
//

import SwiftUI

struct TabButton: View {
        
    @State var title: String = ""
    @State var icon: String = ""
    @State var selectIcon: String = ""
    var isSelected: Bool = false
    var didSelect: (() -> ())
    
    var body: some View {
        Button {
            didSelect()
        } label: {
            
            VStack {
                Image(isSelected   ? selectIcon : icon )
                    .resizable()
                    .scaledToFit()
                    .frame(width: 25, height: 25)
                
                Text(title)
                    .r11
                    
                    .maxConter
            }
            
        }
        .foregroundStyle( isSelected ? Color.primaryApp : Color.placeholder )
        .frame(maxWidth: .infinity, alignment: .center)

    }
}

#Preview {
    TabButton(title: "Home", icon: "home_tab_u", selectIcon: "home_tab") {
        
    }
}
