//
//  SettingsScreen.swift
//  ecommerce
//
//  Created by CodeForAny on 07/08/25.
//

import SwiftUI

struct SettingsScreen: View {
    
    @Environment(\.presentationMode) var mode: Binding<PresentationMode>
    
    @State var showPassword: Bool = false
    @State var txtName: String = ""
    @State var nameError: String = ""
    @State var nameErrorShow: Bool = false
    
    @State var txtDate: String = ""
    @State var dateError: String = ""
    @State var dateErrorShow: Bool = false
    
    @State var isSale: Bool = true
    @State var isNewArrival: Bool = false
    @State var isDeliveryChange: Bool = false
    
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
                
                Text("Settings")
                    .b34
                    .foregroundStyle(Color.primaryText)
                    .maxLeft
                    .h20
                    .padding(.bottom, 15)
                
                
                ScrollView{
                    VStack(spacing: 25){
                        
                        Text("Personal Information")
                            .s18
                            .maxLeft
                        
                        VStack(spacing: 20){
                            RoundTextField(txt: $txtName, placeholder: "Full Name", errorMessage: $nameError, isError: $nameErrorShow)
                            
                            RoundTextField(txt: $txtDate, placeholder: "Date of Birth", errorMessage: $dateError, isError: $dateErrorShow)
                        }
                        
                        
                        HStack{
                            Text("Password")
                                .s18
                                .maxLeft
                            
                            Button {
                                showPassword = true
                            } label: {
                                Text("Change")
                                    .s18
                                    .foregroundStyle(Color.placeholder)
                            }

                        }
                        
                        
                        VStack(alignment: .leading, spacing: 8) {
                            
                            Text("Password")
                                .r14
                                .foregroundStyle(Color.placeholder)
                                .maxLeft
                            
                            
                            Text("**************")
                                .m14
                                .foregroundStyle(Color.primaryText)
                                .maxLeft
                               
                                
                        }
                        .padding()
                        .frame(minHeight: 64 )
                        .background(  Color.white )
                        .shadow(radius:  2)
                        
                        
                        
                        Text("Notifications")
                            .s18
                            .maxLeft
                        
                        VStack{
                            Toggle(isOn: $isSale) {
                                Text("Sales")
                                    .m14
                                    .maxLeft
                            }
                            
                            Toggle(isOn: $isNewArrival) {
                                Text("New arrivals")
                                    .m14
                                    .maxLeft
                            }
                            
                            Toggle(isOn: $isDeliveryChange) {
                                Text("Delivery status changes")
                                    .m14
                                    .maxLeft
                            }
                        }
                        
                        
                        
                    }
                    .h20
                }
            }
            
        }
        .bgNavLink(content: ChangePasswordScreen(), isActive: $showPassword)
        .navHide
    }
}

#Preview {
    
    NavigationView {
        SettingsScreen()
    }
    
    
}
