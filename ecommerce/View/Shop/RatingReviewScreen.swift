//
//  RatingReviewScreen.swift
//  ecommerce
//
//  Created by CodeForAny on 09/07/25.
//

import SwiftUI

struct RatingReviewScreen: View {
    @Environment(\.presentationMode) var mode: Binding<PresentationMode>
    @State var isWithPhoto: Bool = false
    
    var body: some View {
        ZStack{
            
            ScrollView {
                VStack{
                    
                    Text("Rating & Reviews")
                        .b34
                        .foregroundStyle(Color.primaryText)
                        .maxLeft
                    
                    HStack(alignment: .top, spacing: 15){
                        
                        VStack(alignment: .leading){
                            Text("4.3")
                                .b34
                                .foregroundStyle(Color.primaryText)
                            
                            Text("23 ratings")
                                .r14
                                .foregroundStyle(Color.placeholder)
                        }
                        
                        
                        VStack{
                            
                            RatingBarViewRow(rating: 5, progress: 0.7, rate: 12)
                            RatingBarViewRow(rating: 4, progress: 0.2, rate: 3)
                            RatingBarViewRow(rating: 3, progress: 0.1, rate: 2)
                            RatingBarViewRow(rating: 2, progress: 0.09, rate: 1)
                            RatingBarViewRow(rating: 1, progress: 0.01, rate: 0)
                            
                            
                            
                        }
                        .maxLeft
                        
                    }
                    .padding(.vertical, 15)
                    
                    
                    HStack{
                        
                        Text("8 Reviews")
                            .s24
                            .foregroundStyle(Color.primaryText)
                            .maxLeft
                        
                        Button {
                            isWithPhoto = !isWithPhoto
                        } label: {
                            HStack{
                                Image(systemName: isWithPhoto ?"checkmark.square.fill" : "square")
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width: 25, height: 25)
                                    .foregroundStyle( isWithPhoto ? Color.primaryApp : Color.placeholder)
                                
                                Text("with photos")
                                    .r14
                                    .foregroundStyle(Color.placeholder)
                                    
                            }
                        }
                        

                    }
                    .v15
                    
                    
                    LazyVStack(spacing: 8) {
                        
                        ForEach(0..<10, id:\.self) { index in
                            UserReviewRow()
                        }
                    }
                    
                }
                .h20
                .padding(.top, .topInsets + 54)
                .padding(.bottom , .bottomInsets + 46)
            }
            
            
            
            VStack{
                
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
                    
                    
                    Text("")
                        .s18
                        .foregroundStyle(Color.primaryText)
                        .maxConter
                        
                    
                    VStack{
                        
                    }
                    .frame(width: 40)

                    
                }
                .frame(height: 46)
                .h15
                .foregroundStyle( Color.primaryText )
                .padding(.top, .topInsets)
//                .background( Rectangle().fill(Color.white).shadow(color: .black.opacity(0.2) ,radius: 1, y: 1) )
                
                Spacer()
                
                HStack{
                    Spacer()
                    RoundButton(title: "Write a Review", icon: "pencil") {
                        
                    }
                    .frame(width: 170)
                    .h20
                    .padding(.bottom, .bottomInsets + 8)
                }
                .background(Rectangle().fill( LinearGradient(colors: [ Color.clear, Color.bg,  Color.bg,  Color.bg ], startPoint: .top, endPoint: .bottom)) )
                
            }
            
        }
        .background( Color.bg )
        .navHide
    }
}

#Preview {
    RatingReviewScreen()
}
