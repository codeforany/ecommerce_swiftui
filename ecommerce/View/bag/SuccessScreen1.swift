//
//  SuccessScreen1.swift
//  ecommerce
//
//  Created by CodeForAny on 19/08/25.
//

import SwiftUI

struct SuccessScreen1: View {
    @Environment(\.presentationMode) var mode: Binding<PresentationMode>
    @State var showSuccess: Bool = false
    var body: some View {
        ZStack(alignment: .center){
            Image("success")
                .resizable()
                .scaledToFill()
                .frame(width: .screenWidth, height: .screenHeight)
            
            
            VStack{
                
                Text("Success!")
                    .b34
                    .foregroundStyle(Color.primaryText)
                    .maxCenter
                    .padding(.top, .topInsets + 60)
                
                Text("Your order will be delivered soon.\nThank you for choosing out app!")
                    .m14
                    .foregroundStyle(Color.primaryText)
                    .maxCenter
                    .padding(.top, 1)
                
                RoundButton(title: "Continue Shopping", height: 35){
                    showSuccess = true
                }
                .frame(width: 170)
                .t15
                
                Spacer()
                
            }
        }
        .bgNavLink(content: SuccessScreen2(), isActive: $showSuccess)
        .navHide
    }
}

#Preview {
    NavigationView {
        SuccessScreen1()
    }
    
}
