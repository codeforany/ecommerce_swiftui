//
//  WomenCategoriesTabScreen.swift
//  ecommerce
//
//  Created by CodeForAny on 13/06/25.
//

import SwiftUI

struct WomenCategoriesTabScreen: View {
    
    @State var listArr = [
        
        [
              "name": "SUMMER SALES",
              "subname": "Up to 50% off",
              "image": "",
              "is_offer": true,
            ],
            [
              "name": "New",
              "subname": "",
              "image": "c1",
              "is_offer": false,
            ],
            [
              "name": "Clothes",
              "subname": "",
              "image": "c2",
              "is_offer": false,
            ],
            [
              "name": "Shoes",
              "subname": "",
              "image": "c3",
              "is_offer": false,
            ],
            [
              "name": "Accessories",
              "subname": "",
              "image": "c4",
              "is_offer": false,
            ]
    ]
    
    var body: some View {
        ScrollView {
            LazyVStack(alignment: .leading, spacing: 20) {
                
                ForEach(0..<listArr.count, id: \.self) {
                    index in
                    
                    var obj = self.listArr[index]
                    var isOffer = obj["is_offer"] as? Bool ?? false
                    
                    if(isOffer) {
                        
                        VStack(alignment: .center) {
                            
                            Text( obj["name"] as? String ?? "" )
                                .s24
                            
                            Text(obj["subname"] as? String ?? "")
                                .m14
                            
                        }
                        .foregroundStyle(Color.whiteText)
                        .maxConter
                        .frame(height: 100)
                        .background( Color.primaryApp )
                        .cornerRadius(10)
                        
                        
                    }else{
                        VStack() {
                            
                            HStack(alignment: .center){
                                
                                
                                Text( obj["name"] as? String ?? "" )
                                    .s18
                                    .h20
                                    .frame(maxWidth: .infinity, alignment: .leading)
                                
                                
                                Image( obj["image"] as? String ?? "" )
                                    .resizable()
                                    .scaledToFill()
                                    .frame(maxWidth: .infinity, maxHeight: .infinity)
                                    .cornerRadius(10, corner: [.topRight, .bottomRight])
                                
                                
                            }
                            
                            
                        }
                        .foregroundStyle(Color.primaryText)
                        .maxConter
                        .frame(height: 100)
                        .background( Color.white )
                        .cornerRadius(10)
                        .shadow( color: .black.opacity(0.15) ,radius: 5)
                    }
                }
                
                
            }
            .v15
            .h20
        }
    }
}

#Preview {
    WomenCategoriesTabScreen()
}
