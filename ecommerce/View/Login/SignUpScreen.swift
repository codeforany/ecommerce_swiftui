//
//  SignUpScreen.swift
//  ecommerce
//
//  Created by CodeForAny on 29/05/25.
//

import SwiftUI

struct SignUpScreen: View {
    
    @State var txtName: String = ""
    @State var nameError: String = ""
    @State var nameErrorShow: Bool = false
    
    @State var txtEmail: String = ""
    @State var emailError: String = "please enter valid email"
    @State var emailErrorShow: Bool = false
    
    @State var txtPassword: String = ""
    @State var passwordError: String = ""
    @State var passwordErrorShow: Bool = false
    
    var body: some View {
        VStack(spacing: 15) {
            
            Text("Sign Up")
                .b34
                .maxLeft
                .padding( .top, 30)
            
            VStack{}
                .frame(height: .widthPer(per: 0.07))
            
            RoundTextField(txt: $txtName, placeholder: "Name", errorMessage: $nameError, isError: $nameErrorShow)
            
            RoundTextField(txt: $txtEmail, placeholder: "Email", errorMessage: $emailError, isError: $emailErrorShow)
            
            RoundTextField(txt: $txtPassword, placeholder: "Password", errorMessage: $passwordError, isError: $passwordErrorShow)
            
            HStack{
                
                NavigationLink {
                    LoginScreen()
                } label: {
                    Text("Already have an account?")
                        .r14
                        .foregroundStyle( Color.primaryText)
                        
                    Image(systemName: "arrow.right")
                        .foregroundStyle( Color.primaryApp)
                }
                .maxRight

                
            }
            
            RoundButton(title: "SIGN UP")
                .t15
            
            Spacer()
            
            Text("Or sign up with social account")
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
        SignUpScreen()
    }
}
