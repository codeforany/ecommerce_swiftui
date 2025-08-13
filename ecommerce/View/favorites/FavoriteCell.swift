//
//  FavoriteCell.swift
//  ecommerce
//
//  Created by CodeForAny on 13/08/25.
//

import SwiftUI

struct FavoriteCell: View {
    @State var isOffer: Bool = false
    var onPress: (() -> ())?
    
    var body: some View {
        
        ZStack(alignment: .topLeading) {
            VStack(alignment: .leading) {
                ZStack(alignment: .topLeading) {
                    Image("1")
                        .resizable()
                        .scaledToFill()
                        
                        .frame(width: .widthPer(per: 0.50) - 30.0, height: 220)
                        
                    
                    
                    Text( isOffer ? "20%" : "New")
                        .m14
                        .foregroundStyle(.white)
                        .padding(8)
                        .background( isOffer ? Color.primaryApp  :  Color.black )
                        .cornerRadius(20)
                        .h8
                        .t8
                    
                
                }
                .cornerRadius(10)
                .clipped()
                
                
                HStack(spacing: 4) {
                    ForEach(0..<5) { index in
                        Image(systemName: "star.fill")
                            .resizable()
                            .scaledToFit()
                            .font(.system(size: 14))
                            .frame(width: 15)
                            .foregroundStyle(.yellow)
                    }
                    Text("(10)")
                        .r14
                        .foregroundStyle(Color.placeholder)
                    
                }
                
                Text("Dorothy Perkins")
                    .r11
                    .foregroundStyle(Color.placeholder)
                    .padding(.top, 1)
                
                
                Text("Evening Dress")
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
                    
                    Text("$15")
                        .m14
                        .foregroundStyle(Color.placeholder)
                    
                    Text("$12")
                        .m14
                        .foregroundStyle(Color.primaryApp)
                    
                }
                .padding(.top, 1)
            }
                
            
            Button {
                
            } label: {
                Image("fav")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 25, height: 25)
            }
            .frame(width: 40, height: 40, alignment: .center)
            .background( Color.primaryApp )
            .cornerRadius(20)
            .shadow(radius: 2)
            .maxRight
            .padding(.top, 200)

            
        }
        .onTapGesture {
            onPress?()
        }
        
    }
}

#Preview {
    FavoriteCell()
}
