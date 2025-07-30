//
//  AddShippingAddressScreen.swift
//  ecommerce
//
//  Created by CodeForAny on 30/07/25.
//

import SwiftUI

struct AddShippingAddressScreen: View {
    @Environment(\.presentationMode) var mode: Binding<PresentationMode>
    
    @State var txtName: String = ""
    @State var nameError: String = ""
    @State var nameErrorShow: Bool = false
    
    @State var txtAddress: String = ""
    @State var addressError: String = ""
    @State var addressErrorShow: Bool = false
    
    @State var txtCity: String = ""
    @State var cityError: String = ""
    @State var cityErrorShow: Bool = false
    
    @State var txtState: String = ""
    @State var stateError: String = ""
    @State var stateErrorShow: Bool = false
    
    @State var txtZipCode: String = ""
    @State var zipCodeError: String = ""
    @State var ZipCodeErrorShow: Bool = false
    
    @State var txtCountry: String = ""
    @State var countryError: String = ""
    @State var countryErrorShow: Bool = false
    
    var body: some View {
        ZStack {
            
            VStack(spacing: 2){
                
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
                    
                    
                    Text("Adding Shipping Address")
                        .s18
                        .foregroundStyle(Color.primaryText)
                        .maxCenter
                        
                    
                    VStack{
                        
                    }
                    .frame(width: 40)

                    
                }
                .frame(height: 46)
                .h15
                .foregroundStyle( Color.primaryText )
                .padding(.top, .topInsets)
                .background( Rectangle().fill(Color.white).shadow(color: .black.opacity(0.2) ,radius: 1, y: 1) )
                
                ScrollView{
                    
                    VStack(spacing: 15){
                        RoundTextField(txt: $txtName, placeholder: "Full Name", errorMessage: $nameError, isError: $nameErrorShow)
                        
                        
                        RoundTextField(txt: $txtAddress, placeholder: "Address", errorMessage: $addressError, isError: $addressErrorShow)
                        
                        RoundTextField(txt: $txtCity, placeholder: "City", errorMessage: $cityError, isError: $cityErrorShow)
                        
                        
                        RoundTextField(txt: $txtState, placeholder: "State / Province / Region", errorMessage: $stateError, isError: $stateErrorShow)
                        
                        RoundTextField(txt: $txtName, placeholder: "Zip Code (Postal Code)", errorMessage: $nameError, isError: $nameErrorShow)
                        
                        RoundTextField(txt: $txtCountry, placeholder: "Country", errorMessage: $countryError, isError: $countryErrorShow)
                        
                        RoundButton(title: "SAVE ADDESS") {
                            
                        }
                        .padding(.top, 25 )
                    }
                    .padding(20)
                    
                    
                }
                .background( Color.bg)
            }
            
        }
        .navHide
    }
}

#Preview {
    AddShippingAddressScreen()
}
