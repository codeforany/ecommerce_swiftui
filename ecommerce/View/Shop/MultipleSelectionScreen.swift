//
//  MultipleSelectionScreen.swift
//  ecommerce
//
//  Created by CodeForAny on 27/06/25.
//

import SwiftUI

struct MultipleSelectionScreen: View {
    @Environment(\.presentationMode) var mode: Binding<PresentationMode>
    
    @State var valueArr = [
        "adids",
        "adidas Originals",
        "Blend",
        "Boutique Moschino",
        "Champion",
        "Diesel",
        "Jack & Jones",
        "Naf Naf",
        "Red Valentino",
        "s.Oliver"
    ]
    
    @State var selectArr: [String] = []
    
    var body: some View {
        ZStack {
            
            VStack(spacing:0){
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
                    
                    
                    Text("Brand")
                        .s18
                        .foregroundStyle(Color.primaryText)
                        .maxCenter
                    
                    
                    VStack{
                        
                    }
                    .frame(width: 40)
                    
                    
                }
                .frame(height: 46)
                .h15
                .foregroundStyle( Color.primaryText )
                .padding(.top, .topInsets)
                .background( Rectangle().fill(Color.white).shadow(color: .black.opacity(0.2) ,radius: 1, y: 1) )
                
                ScrollView {
                    VStack(spacing: 0){
                        
                        ScrollView( showsIndicators: false) {
                            LazyVStack(spacing: 20) {
                                
                                ForEach( 0..<valueArr.count, id: \.self ) {
                                    index in
                                    
                                    let isSelect = selectArr.contains { cObj in
                                        return cObj == valueArr[index]
                                    }
                                    
                                    Button {
                                        
                                        if isSelect  {
                                            selectArr.removeAll { cObj in
                                                return cObj == valueArr[index]
                                            }
                                        }else{
                                            selectArr.append(valueArr[index])
                                        }
                                        
                                    } label: {
                                        
                                        HStack{
                                            
                                            Text(valueArr[index])
                                                .s16
                                               
                                                .frame(maxWidth: .infinity, alignment
                                                       : .leading)
                                            
                                            Image(systemName: isSelect ? "checkmark.square" : "square" )
                                                .resizable()
                                                .scaledToFit()
                                                .frame(width: 25, height: 25)
                                            
                                        }
                                        
                                        .frame(height: 50)
                                        
                                    }
                                    .foregroundStyle(  isSelect ? Color.primaryApp : Color.primaryText)
                                }
                                
                            }
                            .padding(15)
                            .h15
                        }
                      
                        
                        
                        
                    }
                }
                
                
                HStack{
                    
                    RoundButton(title: "Discard", type:.line) {
                        
                    }
                    
                    
                    RoundButton(title: "Apply") {
                        
                    }
                    
                    
                }.h15
                    .v15
                    .padding(.bottom, .bottomInsets + 15)
                    .background( Rectangle().fill(Color.white).shadow(color: .black.opacity(0.2) ,radius: 1, y: -1) )
                
            }
            
            
        }
        .navHide
        .background( Color.bg )
    }
}

#Preview {
    MultipleSelectionScreen()
}
