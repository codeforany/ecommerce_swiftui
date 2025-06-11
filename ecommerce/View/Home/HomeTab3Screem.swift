//
//  HomeTab3Screem.swift
//  ecommerce
//
//  Created by CodeForAny on 11/06/25.
//

import SwiftUI
import ExyteGrid

struct HomeTab3Screem: View {
    
@State var listArr = [
    [
      "name": "New collection",
      "image": "g1",
      "is_color": false
    ],
      [
        "name": "Summer sale",
        "image": "g2",
        "is_color": true
      ],
      [
        "name": "Men\"s hoodies",
        "image": "g3",
        "is_color": false
      ],
      [
        "name": "Black",
        "image": "g4",
        "is_color": false
      ],
    
    
    [
      "name": "New collection",
      "image": "g1",
      "is_color": false
    ],
      [
        "name": "Summer sale",
        "image": "g2",
        "is_color": true
      ],
      [
        "name": "Men\"s hoodies",
        "image": "g3",
        "is_color": false
      ],
      [
        "name": "Black",
        "image": "g4",
        "is_color": false
      ],
    
    [
      "name": "New collection",
      "image": "g1",
      "is_color": false
    ],
      [
        "name": "Summer sale",
        "image": "g2",
        "is_color": true
      ],
      [
        "name": "Men\"s hoodies",
        "image": "g3",
        "is_color": false
      ],
      [
        "name": "Black",
        "image": "g4",
        "is_color": false
      ]
]
    
    var body: some View {
        Grid(0..<listArr.count, id: \.self, tracks: 2, spacing: 0) { index in
                
            var obj = self.listArr[index]
            
                ZStack{
                Image(obj["image"] as? String ?? "")
                    .resizable()
                    .frame(width: .widthPer(per:  index % 4 == 0 ? 1.0 : 0.5), height: .widthPer(per:  index % 2 == 0 ? 1.0 : 0.5))
                    .aspectRatio(contentMode: .fill)
                
                VStack{
                    
                    if( index % 4 == 0 ) {
                        Spacer()
                        Text(obj["name"] as? String ?? "" )
                            .b34
                            .foregroundStyle( obj["is_color"] as? Bool ?? false ? Color.primaryApp  : Color.white  )
                            .maxRight
                        
                    }else{
                        Text(obj["name"] as? String ?? "" )
                            .b34
                            .foregroundStyle( obj["is_color"] as? Bool ?? false ? Color.primaryApp  : Color.white  )
                            .maxLeft
                    }
                    
                    
                }
                .padding(.vertical, 25)
                .padding(.horizontal, 15)
            }
                .frame(width: .widthPer(per:  index % 4 == 0 ? 1.0 : 0.5), height: .widthPer(per:  index % 2 == 0 ? 1.0 : 0.5))
                .clipped()
                .gridSpan(column: index % 4 == 0 ? 2 : 1 , row: index % 2 == 0 ? 2 : 1 )
            
        }
        .gridContentMode(.scroll)
        .gridFlow(.rows)
        .navHide
        
    }
}

#Preview {
    HomeTab3Screem()
}
