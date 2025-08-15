//
//  ChangePasswordScreen.swift
//  ecommerce
//
//  Created by CodeForAny on 15/08/25.
//

import SwiftUI

struct ChangePasswordScreen: View {
    @Environment(\.presentationMode) var mode: Binding<PresentationMode>
   
    @State var showForgot = false
    
    @State var txtCurrentPassword: String = ""
    @State var currentPasswordError: String = ""
    @State var currentPasswordErrorShow: Bool = false
    
    @State var txtPassword: String = ""
    @State var passwordError: String = ""
    @State var passwordErrorShow: Bool = false
    
    @State var txtConfirmPassword: String = ""
    @State var confirmPasswordError: String = ""
    @State var confirmPasswordErrorShow: Bool = false
    
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
            
            Text("Password Change")
                .b34
                .maxLeft
                .padding( .top, 30)
            
            VStack{}
                .frame(height: .widthPer(per: 0.07))
            
                        
            RoundTextField(txt: $txtCurrentPassword, placeholder: "Current Password", errorMessage: $currentPasswordError, isError: $currentPasswordErrorShow)
            
            HStack{
                
                Button {
                    showForgot = true
                } label: {
                    Text("Forgot you password?")
                        .r14
                        .foregroundStyle( Color.primaryText)
                        
                    
                }
                .maxRight

                
            }
            .b8
            
            RoundTextField(txt: $txtPassword, placeholder: "New Password", errorMessage: $passwordError, isError: $passwordErrorShow)
            
            
            RoundTextField(txt: $txtConfirmPassword, placeholder: "Repeat New Password", errorMessage: $confirmPasswordError, isError: $confirmPasswordErrorShow)
            
            
            
            RoundButton(title: "SAVE PASSWORD")
                .t15
            
            Spacer()
            
            
        }
        .bgNavLink(content: ForgotPasswordScreen(), isActive: $showForgot)
        .h20
        .navHideWithout
        .background( Color.bg )
    }
}

#Preview {
    NavigationView {
        ChangePasswordScreen()
    }
    
}
