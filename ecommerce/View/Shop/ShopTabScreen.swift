//
//  ShopTabScreen.swift
//  ecommerce
//
//  Created by CodeForAny on 13/06/25.
//

import SwiftUI

struct ShopTabScreen: View {
    
    @State var selectCat: Int  = 0
    
    var body: some View {
        ZStack {
            
            VStack{
                    
                ZStack(alignment: .center){
                    
                    
                    Text("Categories")
                        .s18
                        
                    
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
                }
                .frame(height: 46)
                .h20
                .foregroundStyle( Color.primaryText )
                .background( Color.white )
                .shadow(color: .black.opacity(0.2) ,radius: 1, y: 1)
                .padding(.top, .topInsets)
                
                VStack(alignment: selectCat == 0 ? .leading : selectCat == 1 ? .center : .trailing ) {
                    
                    HStack{
                            
                        Button {
                            withAnimation {
                                selectCat = 0
                            }
                        } label: {
                            Text("Women")
                                .s16
                        }
                        .foregroundStyle( selectCat == 0 ? Color.primaryText : Color.placeholder )
                        .frame(height: 46)
                        .frame(maxWidth: .infinity, alignment: .center)
                        
                        Button {
                            
                            withAnimation {
                                selectCat = 1
                            }
                            
                            
                        } label: {
                            Text("Men")
                                .s16
                        }
                        .foregroundStyle( selectCat == 1 ? Color.primaryText : Color.placeholder )
                        .frame(height: 46)
                        .frame(maxWidth: .infinity, alignment: .center)
                        
                        
                        Button {
                            withAnimation {
                                selectCat = 2
                            }
                        } label: {
                            Text("Kids")
                                .s16
                        }
                        .foregroundStyle( selectCat == 2 ? Color.primaryText : Color.placeholder )
                        .frame(height: 46)
                        .frame(maxWidth: .infinity, alignment: .center)

                        
                    }
                    
                    Rectangle()
                        .fill( Color.primaryApp )
                        .frame(width: .widthPer(per: 0.33), height: 4)
                    
                }
                .background( Color.white )
                .shadow(color: .black.opacity(0.05) ,radius: 1, y: 1)
                
                if(selectCat == 0) {
                    WomenCategoriesTabScreen()
                }else if(selectCat == 1) {
                    WomenCategoriesTabScreen()
                }else if(selectCat == 2) {
                    WomenCategoriesTabScreen()
                }
                
                
            }
            
            
        }
        .padding(.bottom, .bottomInsets  + 60 )
        .navHide
        .background( Color.bg )
        
    }
}

#Preview {
    ShopTabScreen()
}
