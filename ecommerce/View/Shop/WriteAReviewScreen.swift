//
//  WriteAReviewScreen.swift
//  ecommerce
//
//  Created by CodeForAny on 15/07/25.
//

import SwiftUI

struct WriteAReviewScreen: View {
    @State var selectRate: Int = 0
    @State var txtMessage: String = ""
    
    @State var column  = [ GridItem(.flexible(), spacing: 15),GridItem(.flexible(), spacing: 15),GridItem(.flexible(), spacing: 15), ]
    
    var body: some View {
        VStack{
            
            Text("What is you rate?")
                .s18
                .foregroundStyle(Color.primaryText)
            
            HStack(spacing: 4){
                ForEach(0..<5) { index in
                    Image(systemName: "star.fill")
                        .resizable()
                        .scaledToFit()
                        .font(.system(size: 50))
                        .frame(width: 50)
                        .foregroundStyle( index <= selectRate  ? Color.yellow : Color.gray.opacity(0.2) )
                        .onTapGesture {
                            self.selectRate = index
                        }
                }
            }
            .v15
            
            Text("Please share your opinion\nabout this product")
                .multilineTextAlignment(.center)
                .s18
                .foregroundStyle(Color.primaryText)
                
            ZStack {
                TextField("Your Review", text: $txtMessage, axis: .vertical)
                    .textFieldStyle(.plain)
            }
            .padding()
            .frame(minHeight: 200, alignment: .topLeading)
            .background( Color.white )
            
            .cornerRadius(10, corner: .allCorners)
            .shadow(color: .black.opacity(0.1),radius: 2)
                
                .v15
            
            
            LazyVGrid(columns: column, spacing: 15) {
                ForEach(0..<0+1) { index in
                    
                    VStack{
                        Image(systemName: "camera.fill")
                            .frame(width: 50, height: 50, alignment: .center)
                            .background( Color.primaryApp )
                            .cornerRadius(25, corner: .allCorners)
                            .foregroundStyle(.white)
                        
                        Text("Add your photos")
                            .multilineTextAlignment(.center)
                            .r11
                            .foregroundStyle(Color.primaryText)
                    }
                    .frame(maxWidth: .infinity,  maxHeight: .infinity, alignment: .center)
                    .aspectRatio( 1,contentMode: .fill)
                    .background( Color.white )
                    .cornerRadius(10, corner: .allCorners)
                    .shadow(color: .black.opacity(0.1),radius: 2)
                    
                }
            }
            .v15
            
            
            RoundButton(title: "SEND REVIEW") {
                
            }
            
        }
        .h20
    }
}

#Preview {
    WriteAReviewScreen()
}
