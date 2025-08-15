//
//  ForgotPasswordScreen.swift
//  ecommerce
//
//  Created by CodeForAny on 15/08/25.
//

import SwiftUI

struct ForgotPasswordScreen: View {
    @Environment(\.presentationMode) var mode: Binding<PresentationMode>
   
    @State var txtEmail: String = ""
    @State var emailError: String = "please enter valid email"
    @State var emailErrorShow: Bool = false
    
    
    var body: some View {
        VStack(spacing: 15) {
            
            HStack{
                Button {
                    mode.wrappedValue.dismiss()
                } label: {
                    Image(systemName: "chevron.left")
                        .font(.system(size: 30))
                        .foregroundStyle( Color.primaryText)
                }
                
                Spacer()

            }
            
            Text("Forgot Password")
                .b34
                .maxLeft
                .padding( .top, 30)
            
            VStack{}
                .frame(height: .widthPer(per: 0.07))
            
            Text("Please, enter you email address. You will receive a link to create new password via email.")
                .r14
                .b8

                        
            RoundTextField(txt: $txtEmail, placeholder: "Email", errorMessage: $emailError, isError: $emailErrorShow)
            
           
            RoundButton(title: "SEND")
                .t15
            
            Spacer()
            
           
            
        }
        .h
        .navHideWithout
        .background( Color.bg )
    }
}

#Preview {
    ForgotPasswordScreen()
}
