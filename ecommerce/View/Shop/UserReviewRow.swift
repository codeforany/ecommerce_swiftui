//
//  UserReviewRow.swift
//  ecommerce
//
//  Created by CodeForAny on 10/07/25.
//

import SwiftUI

struct UserReviewRow: View {
    var body: some View {
        ZStack(alignment: .topLeading) {
            
            VStack{
                
                Text("Helene Moore")
                    .s16
                    .foregroundStyle( Color.primaryText )
                    .maxLeft
                
                HStack
                {
                    RatingBarView(rating: 5,  )
                    
                    Text("Jube 10, 2025")
                        .r11
                        .foregroundStyle( Color.placeholder )
                        .maxRight
                        
                }
                .b15
                
                
                Text("The dress is great! Very classy and comfortable. It fit perfectly! I'm 5'7\" and 130 pounds. I am a 34B chest. This dress would be too long for those who are shorter but could be hemmed. I wouldn't recommend it for those big chested as I am smaller chested and it fit me perfectly. The underarms were not too wide and the dress was made well.")
                    .r14
                    .foregroundStyle( Color.primaryText.opacity(0.8) )
                    .maxLeft
                    .b8
                
                HStack{
                    Spacer()
                    
                    Button {
                        
                    } label: {
                        HStack{
                            Text("Helpful")
                                .r11
                            Image(systemName: "hand.thumbsup.fill")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 13, height: 13)
                        }
                    }
                    .foregroundStyle( Color.placeholder )

                }
            }
            .padding(20)
            .background( Color.white )
            .cornerRadius(5, corner: .allCorners)
            .shadow( color: Color.black.opacity(0.05) ,radius: 3)
            .padding(15)
           
            
            
            Image("1")
                .resizable()
                .scaledToFill()
                .frame(width: 35, height: 35)
                .cornerRadius(20)
                .shadow( color: Color.black.opacity(0.05) ,radius: 2, y: 2)
            
            
        }
    }
}

#Preview {
    UserReviewRow()
        .padding(20)
}
