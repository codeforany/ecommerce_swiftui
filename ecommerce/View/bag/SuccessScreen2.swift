//
//  SuccessScreen2.swift
//  ecommerce
//
//  Created by CodeForAny on 19/08/25.
//

import SwiftUI

struct SuccessScreen2: View {
    @Environment(\.presentationMode) var mode: Binding<PresentationMode>
    
    var body: some View {
        ZStack {
            VStack{
                Spacer()
                
                Image("bags")
                    .resizable()
                    .scaledToFit()
                    .frame(width: .widthPer(per: 0.5), height: .widthPer(per: 0.5))
                
                Text("Success!")
                    .b34
                    .foregroundStyle(Color.primaryText)
                    .maxCenter
                    .t15
                
                Text("Your order will be delivered soon.\nThank you for choosing out app!")
                    .m14
                    .foregroundStyle(Color.primaryText)
                    .maxCenter
                    .padding(.top, 1)
                
                Spacer()
                
                RoundButton(title: "Continue Shopping"){
                    mode.wrappedValue.dismiss()
                }
                .h20
                .padding(.bottom, .bottomInsets + 8)
                
                
            }
        }
        .navHide
    }
}

#Preview {
    SuccessScreen2()
}
