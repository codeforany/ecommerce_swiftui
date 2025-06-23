//
//  SheetRow.swift
//  ecommerce
//
//  Created by CodeForAny on 23/06/25.
//

import SwiftUI

struct SheetRow: View {
    @State var isSelected: Bool = false
    @State var title: String = "Title"
    var onPressed: (() -> ())?
    var body: some View {
        Button {
           onPressed?()
        } label: {
            
            if(isSelected) {
                Text(title)
                    .s16
                    .foregroundStyle( Color.white)
                    .maxLeft
                    .padding()
            }else{
                Text(title)
                    .r16
                    .foregroundStyle( Color.primaryText)
                    .maxLeft
                    .padding()
            }
            
                
        }
        .maxLeft
        .frame(height: 50 )
        .background( isSelected ? Color.primaryApp : Color.white )
    }
}

#Preview {
    SheetRow()
}
