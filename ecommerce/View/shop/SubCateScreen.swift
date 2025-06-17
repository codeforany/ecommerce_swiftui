//
//  SubCateScreen.swift
//  ecommerce
//
//  Created by CodeForAny on 17/06/25.
//

import SwiftUI

struct SubCateScreen: View {
    
    @Environment(\.presentationMode) var mode: Binding<PresentationMode>
    
    var listArr = [
        ["name": "Tops"],
            ["name": "Shirts & Blouses"],
            ["name": "Cardigans & Sweaters"],
            ["name": "Knitwear"],
            ["name": "Blazers"],
            ["name": "Outerwear"],
            ["name": "Pants"],
            ["name": "Jeans"],
            ["name": "Shorts"],
            ["name": "Skirts"],
            ["name": "Dresses"]
    ]
    var body: some View {
        ZStack {
            
            VStack {
                
                ZStack(alignment: .center){
                    
                    
                    
                       
                        
                    
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
                        
                        
                        Text("Categories")
                            .s18
                            .maxConter
                        
                        Button {
                            
                        } label: {
                            Image(systemName: "magnifyingglass")
                                .resizable()
                                .frame(width: 20, height: 20)
                        }
                        .frame(width: 40, height: 40)

                        
                    }
                }
                .frame(height: 46)
                .h20
                .foregroundStyle( Color.primaryText )
                .background( Color.white )
                .shadow(color: .black.opacity(0.2) ,radius: 1, y: 1)
                .padding(.top, .topInsets)
                
                RoundButton(title: "VIEW ALL ITEMS") {
                    
                }
                .padding(15)
                
                Text("Categories")
                    .m14
                    .foregroundStyle(Color.secondaryText)
                    .maxLeft
                    .h20
                
                ScrollView {
                    
                    
                    LazyVStack {
                        ForEach(0..<listArr.count, id:\.self) { i in
                            
                            var obj = self.listArr[i]
                            
                            
                            VStack{
                                Button {
                                    
                                } label: {
                                    Text(obj["name"] ?? "" )
                                        .r16
                                        .foregroundStyle(Color.primaryText)
                                        .maxLeft
                                }
                                .frame( height: 50)
                                .padding(.horizontal, 35)
                                
                                RoundedCorner()
                                    .fill( Color.black.opacity(0.1) )
                                    .frame( height: 1)
                            }
                            
                            

                        }
                    }
                    
                    
                    
                }
            }
            
        }
        .navHide
        .background( Color.bg )
        
    }
}

#Preview {
    SubCateScreen()
}
