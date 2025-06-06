//
//  HomeTab1Screen.swift
//  ecommerce
//
//  Created by CodeForAny on 05/06/25.
//

import SwiftUI

struct HomeTab1Screen: View {
    var body: some View {
        ScrollView {
            
            VStack{
                
                ZStack(alignment: .bottomLeading) {
                    Image("big1")
                        .resizable()
                        .scaledToFit()
                        .frame(width: .screenWidth)
                        
                    VStack(alignment: .leading){
                        Text("Fashion\nsale")
                            .font(.customfont(.bold, fontSize: 55))
                            .foregroundStyle(.white)
                        
                        RoundButton(title: "Check")
                            .frame(width: 150, height: 30)
                    }
                    .h20
                    .padding(.bottom, 30)
                    
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
    HomeTab1Screen()
}
