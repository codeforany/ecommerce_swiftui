//
//  CatProductListScreen.swift
//  ecommerce
//
//  Created by CodeForAny on 19/06/25.
//

import SwiftUI

struct CatProductListScreen: View {
    @Environment(\.presentationMode) var mode: Binding<PresentationMode>
    
    var catArr =
    [["name": "T-shirts"],
    ["name": "Crop tops"],
    ["name": "Sleeveless"],
    ["name": "Shirts"],
    ["name": "T-shirts"],
    ["name": "Crop tops"],
    ["name": "Sleeveless"],
    ["name": "Shirts"],
    ["name": "T-shirts"],
    ["name": "Crop tops"],
    ["name": "Sleeveless"],
    ["name": "Shirts"]]
    
    var body: some View {
        ZStack {
            
            VStack {
                
                VStack(alignment: .leading){
                    
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
                    
                    Text("Women's tops")
                        .b34
                        .foregroundStyle(Color.primaryText)
                        .maxLeft
                        .h15
                    
                    
                    ScrollView(.horizontal, showsIndicators: false) {
                        
                        LazyHStack(spacing: 15) {
                            
                            
                            ForEach(0..<catArr.count, id: \.self) { index in
                                var obj = catArr[index]
                                Button {
                                    
                                } label: {
                                    Text(obj["name"] as? String ?? "" )
                                        .m14
                                        .foregroundStyle(Color.white)
                                        .maxConter
                                }
                                .foregroundStyle(Color.white)
                                .frame(width: 120, height: 35, alignment: .center)
                                .background(Color.black)
                                .cornerRadius(17.5)
                            }
                            
                            
                           

                            
                        }
                        .frame(height: 35)
                        .h15
                        
                    }
                    .frame(height: 35)
                    
                    
                    HStack {
                            
                        Button {
                            
                        } label: {
                            Image(systemName: "line.3.horizontal.decrease")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 25, height: 25, alignment: .center)
                            
                            Text("Filter")
                                .r11
                                .foregroundStyle(Color.primaryText)
                        }
                        
                        
                        Button {
                            
                        } label: {
                            Image(systemName: "arrow.up.arrow.down")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 25, height: 25, alignment: .center)
                            
                            Text("Price: lowest to highest")
                                .r11
                                .foregroundStyle(Color.primaryText)
                        }
                        .maxConter
                        
                        Button {
                            
                        } label: {
                            Image(systemName: "square.grid.3x2.fill")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 25, height: 25, alignment: .center)
                        }
                    }
                    .background( Color.bg )
                    .h15
                    .v8
                    
                }
                
                .foregroundStyle( Color.primaryText )
                .background( Color.white )
                .shadow(color: .black.opacity(0.2) ,radius: 1, y: 1)
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
                                   
                                    
                                    Text("Mango")
                                        .r11
                                        .foregroundStyle(Color.placeholder)
                                        .padding(.top, 1)
                                    
                                    HStack(spacing: 4) {
                                        ForEach(0..<5) { index in
                                            Image(systemName: "star.fill")
                                                .resizable()
                                                .scaledToFit()
                                                .font(.system(size: 14))
                                                .frame(width: 15, height: 15)
                                                .foregroundStyle(.yellow)
                                        }
                                        Text("(10)")
                                            .r14
                                            .foregroundStyle(Color.placeholder)
                                        
                                    }
                                    
                                    HStack {
                                        Text("$12")
                                            .m14
                                            .foregroundStyle(Color.primaryApp)
                                        
                                    }
                                    .padding(.top, 1)
                                }
                                .maxLeft
                            }
                            .background( Color.white )
                            .cornerRadius(10)
                            .shadow( color: Color.black.opacity(0.2) , radius: 2, y:1)
                            .h15
                            
                            

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
    CatProductListScreen()
}
