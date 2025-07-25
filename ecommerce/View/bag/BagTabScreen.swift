//
//  BagTabScreen.swift
//  ecommerce
//
//  Created by CodeForAny on 21/07/25.
//

import SwiftUI

struct BagTabScreen: View {
    @Environment(\.presentationMode) var mode: Binding<PresentationMode>
    @State var txtPromoCode: String = ""
    @State var isShowPromoCode = false
    var body: some View {
        ZStack {
            
            VStack(spacing:0) {
                
                VStack(alignment: .leading){
                    
                    HStack{
                        
                        Spacer()
                        
                        Button {
                            
                        } label: {
                            Image(systemName: "magnifyingglass")
                                .resizable()
                                .frame(width: 20, height: 20)
                        }
                        .frame(width: 40, height: 40)
                        
                        
                    }
                    .frame(height: 46)
                    .h15
                    
                    Text("My Bag")
                        .b34
                        .foregroundStyle(Color.primaryText)
                        .maxLeft
                        .h15
                    
                }
                .foregroundStyle( Color.primaryText )
                .padding(.top, .topInsets)
                
                
                
                
                
                ScrollView {
                    
                    
                    LazyVStack (spacing: 15) {
                        
                        
                        ForEach(0..<10, id:\.self) { i in
                            
                            
                            
                            
                            HStack {
                                
                                Image("sc1")
                                    .resizable()
                                    .scaledToFill()
                                    .frame(width: 104, height: 104)
                                
                                    .clipped()
                                
                                VStack(alignment: .leading) {
                                    
                                    
                                    Text("Pullover")
                                        .s16
                                        .foregroundStyle(Color.primaryText)
                                        .padding(.top, 1)
                                    
                                    
                                    HStack{
                                        Text("Color:")
                                            .r11
                                            .foregroundStyle(Color.placeholder)
                                        
                                        Text("L")
                                            .r11
                                            .foregroundStyle(Color.primaryText)
                                        
                                        Text("Size:")
                                            .r11
                                            .foregroundStyle(Color.placeholder)
                                        
                                        Text("L")
                                            .r11
                                            .foregroundStyle(Color.primaryText)
                                    }
                                    
                                    
                                    HStack {
                                        
                                        Button {
                                            
                                        } label: {
                                            Image(systemName: "minus")
                                                .resizable()
                                                .scaledToFit()
                                                .foregroundStyle(Color.primaryText)
                                                .frame(width: 15, height: 15)
                                        }
                                        .frame(width: 30, height: 30)
                                        .background(Color.white)
                                        .cornerRadius(20, corner: .allCorners)
                                        .shadow(radius: 1)
                                        
                                        Text("1")
                                            .m14
                                            .foregroundStyle(Color.primaryText)
                                            .frame(minWidth:20)
                                        
                                        Button {
                                            
                                        } label: {
                                            Image(systemName: "plus")
                                                .resizable()
                                                .scaledToFit()
                                                .foregroundStyle(Color.primaryText)
                                                .frame(width: 15, height: 15)
                                        }
                                        .frame(width: 30, height: 30)
                                        .background(Color.white)
                                        .cornerRadius(20, corner: .allCorners)
                                        .shadow(radius: 1)
                                        
                                        Spacer()
                                        
                                        Text("$12")
                                            .m14
                                            .foregroundStyle(Color.primaryText)
                                            .padding(.trailing, 15)
                                        
                                    }
                                    .padding(.top, 1)
                                }
                                .maxLeft
                            }
                            .background( Color.white )
                            .cornerRadius(10)
                            .shadow( color: Color.black.opacity(0.1) , radius: 2, y:1)
                            .h15
                        }
                    }
                    .v15
                    
                    
                }
                
                VStack(spacing: 10){
                    ZStack(alignment: .trailing) {
                            
                        TextField("Enter your promo code", text: $txtPromoCode)
                            .frame(height: 40)
                            .h15
                            .background( Rectangle().fill( Color.white ).cornerRadius(10).shadow(color: .black.opacity(0.05) ,radius: 1) )
                            .padding(.trailing, 20)
                            
                        Button {
                            isShowPromoCode = true
                        } label: {
                            Image(systemName: "arrow.forward")
                                .resizable()
                                .scaledToFit()
                                .foregroundStyle(Color.white)
                                .frame(width: 20, height: 20)
                        }
                        .frame(width: 40, height: 40)
                        .background(Color.black)
                        .cornerRadius(20, corner: .allCorners)
                    }
                    
                    HStack {
                        
                        Text("Total amount")
                            .r14
                            .foregroundStyle(Color.placeholder)
                            .maxLeft
                        
                        Text("124$")
                            .s18
                            .foregroundStyle(Color.primaryText)
                            
                    }
                    
                    RoundButton(title: "CHECK OUT") {
                        
                    }
                }
                
                .h20
                
            }
            .padding(.bottom, .bottomInsets + 60)
        }
        .sheet(isPresented: $isShowPromoCode, content: {
            
            LazyVStack(spacing: 15) {
                ZStack(alignment: .trailing) {
                        
                    TextField("Enter your promo code", text: $txtPromoCode)
                        .frame(height: 40)
                        .h15
                        .background( Rectangle().fill( Color.white ).cornerRadius(10).shadow(color: .black.opacity(0.05) ,radius: 1) )
                        .padding(.trailing, 20)
                        
                    Button {
                        
                    } label: {
                        Image(systemName: "arrow.forward")
                            .resizable()
                            .scaledToFit()
                            .foregroundStyle(Color.white)
                            .frame(width: 20, height: 20)
                    }
                    .frame(width: 40, height: 40)
                    .background(Color.black)
                    .cornerRadius(20, corner: .allCorners)
                }
                .h8
                
                Text("Your Promo Codes")
                    .s18
                    .foregroundStyle(Color.primaryText)
                    .maxLeft
                    .h8
                
                ScrollView {
                    
                    LazyVStack(spacing: 15) {
                        ForEach(0..<10, id:\.self) {
                            index in
                            
                            HStack{
                                ZStack {
                                    Image("p1")
                                        .resizable()
                                        .scaledToFill()
                                        .frame(width: 100, height: 100, alignment: .center)
                                    
                                    HStack(spacing:0){
                                        Text("10")
                                            .b34
                                            .foregroundStyle(Color.primaryText)
                                        
                                        VStack{
                                            Text("%")
                                                .font( .customfont(.bold, fontSize: 14) )
                                                .foregroundStyle(Color.primaryText)
                                            
                                            Text("off")
                                                .font( .customfont(.bold, fontSize: 14) )
                                                .foregroundStyle(Color.primaryText)
                                        }
                                    }
                                }
                                .frame(width: 100, height: 100, alignment: .center)
                                .background( Color.primaryApp )
                                .cornerRadius(10, corner: [.topLeft, .bottomLeft])
                                
                                HStack{
                                    
                                    VStack{
                                        Text("Personal offer")
                                            .m14
                                            .foregroundStyle(Color.primaryText)
                                            .maxLeft
                                        
                                        Text("mypromocode2020")
                                            .r11
                                            .foregroundStyle(Color.primaryText)
                                    }
                                    
                                    VStack{
                                        Text("6 days remaining")
                                            .r11
                                            .foregroundStyle(Color.placeholder)
                                            .maxLeft
                                        
                                        RoundButton(title: "Apply", height: 35) {
                                            
                                        }
                                    }
                                    .padding(.trailing, 8)
                                    
                                }
                                
                                
                            }
                            .frame(height: 100, alignment: .center)
                            .background(Color.white)
                            .clipShape( RoundedRectangle(cornerRadius: 10))
                            .shadow( color: .black.opacity(0.1) ,radius: 2, y:2)
                        }
                    }
                    .h8
                    
                }
                .frame(height: .screenHeight * 0.3)
            
            }
            .h15
            .presentationDetents([.medium])
            .presentationCornerRadius(25)
            
        })
        .navHide
        .background( Color.bg )
    }
}

#Preview {
    BagTabScreen()
}
