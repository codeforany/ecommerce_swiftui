//
//  AddCardScreen.swift
//  ecommerce
//
//  Created by CodeForAny on 26/08/25.
//

import SwiftUI

struct AddCardScreen: View {
    @Environment(\.presentationMode) var mode: Binding<PresentationMode>
    
    @State var txtName: String = ""
    @State var nameError: String = ""
    @State var nameErrorShow: Bool = false
    
    @State var txtCardNumber: String = ""
    @State var cardNumberError: String = ""
    @State var cardNumberErrorShow: Bool = false
    
    @State var txtExpireDate: String = ""
    @State var expireDateError: String = ""
    @State var expireDateErrorShow: Bool = false
    
    @State var txtCVV: String = ""
    @State var cvvError: String = ""
    @State var cvvErrorShow: Bool = false

    @State var isDefault: Bool = true
    
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
                    
                    
                    Text("Add new card")
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
                        RoundTextField(txt: $txtName, placeholder: "Name on card", errorMessage: $nameError, isError: $nameErrorShow)
                        
                        
                        RoundTextField(txt: $txtCardNumber, placeholder: "Card Number", errorMessage: $cardNumberError, isError: $cardNumberErrorShow)
                        
                        RoundTextField(txt: $txtExpireDate, placeholder: "Expire Date", errorMessage: $expireDateError, isError: $expireDateErrorShow)
                        
                        
                        RoundTextField(txt: $txtCVV, placeholder: "CVV", errorMessage: $cvvError, isError: $cvvErrorShow)
                        
                        Button {
                            isDefault = !isDefault
                        } label: {
                            Image(systemName: isDefault ?  "checkmark.square.fill" : "square")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 25, height: 25)
                            
                            Text("Set as default payment method")
                                .r14
                                .maxLeft
                        }
                        .foregroundStyle(Color.primaryText)
                        
                        RoundButton(title: "ADD CARD") {
                            
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
    AddCardScreen()
}
