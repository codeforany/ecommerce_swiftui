//
//  LoginScreen.swift
//  ecommerce
//
//  Created by CodeForAny on 29/05/25.
//

import SwiftUI

struct LoginScreen: View {
        
    @Environment(\.presentationMode) var mode: Binding<PresentationMode>
   
    @State var txtEmail: String = ""
    @State var emailError: String = "please enter valid email"
    @State var emailErrorShow: Bool = false
    
    @State var txtPassword: String = ""
    @State var passwordError: String = ""
    @State var passwordErrorShow: Bool = false
    
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
            
            Text("Login")
                .b34
                .maxLeft
                .padding( .top, 30)
            
            VStack{}
                .frame(height: .widthPer(per: 0.07))
            
                        
            RoundTextField(txt: $txtEmail, placeholder: "Email", errorMessage: $emailError, isError: $emailErrorShow)
            
            RoundTextField(txt: $txtPassword, placeholder: "Password", errorMessage: $passwordError, isError: $passwordErrorShow)
            
            HStack{
                
                Button {
                    
                } label: {
                    Text("Forgot you password?")
                        .r14
                        .foregroundStyle( Color.primaryText)
                        
                    Image(systemName: "arrow.right")
                        .foregroundStyle( Color.primaryApp)
                }
                .maxRight

                
            }
            
            RoundButton(title: "LOGIN")
                .t15
            
            Spacer()
            
            Text("Or login with social account")
                .r14
                .maxCenter
                .padding( .top, 30)
            
            HStack(spacing: 15){
                Spacer()
                
                RoundIconButton(icon: "fb") {
                    
                }
                
                RoundIconButton(icon: "google") {
                    
                }
                
                Spacer()
            }
            
        }
        .h
        .navHideWithout
        .background( Color.bg )
    }
}

#Preview {
    
    NavigationView {
        LoginScreen()
    }
    
    
}
