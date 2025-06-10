//
//  HomeTab2Screen.swift
//  ecommerce
//
//  Created by CodeForAny on 09/06/25.
//

import SwiftUI

struct HomeTab2Screen: View {
    var body: some View {
        ScrollView {
            
            VStack{
                
                ZStack(alignment: .bottomLeading) {
                    Image("b1")
                        .resizable()
                        .scaledToFit()
                        .frame(width: .screenWidth)
                        
                    VStack(alignment: .leading){
                        Text("Street clothes")
                            .font(.customfont(.bold, fontSize: 40))
                            .foregroundStyle(.white)
                        
                        
                    }
                    .h20
                    .padding(.bottom, 30)
                    
                }
                
                SectionRow(title: "Sale", subtitle: "Super summer sale")
                
                
                ScrollView(.horizontal) {
                    
                    
                    LazyHStack(spacing: 20) {
                        
                        ForEach(0..<6) { index in
                            ItemRow(isOffer: true)
                        }
                        
                    }
                    .h20
                    
                    
                    
                    
                    
                }
                
                
                SectionRow(title: "New", subtitle: "You’ve never seen it before!")
                
                
                ScrollView(.horizontal) {
                    
                    
                    LazyHStack(spacing: 20) {
                        
                        ForEach(0..<6) { index in
                            ItemRow()
                        }
                        
                    }
                    .h20
                    
                    
                    
                    
                    
                }
                
            }
            
        }
        .navHide
        .padding(.bottom, .bottomInsets  + 60 )
    }
}

#Preview {
    HomeTab2Screen()
}
