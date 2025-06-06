//
//  SectionRow.swift
//  ecommerce
//
//  Created by CodeForAny on 05/06/25.
//

import SwiftUI

struct SectionRow: View {
    
    @State var title = ""
    @State var subtitle = ""
    var onPressed: (() -> ())?
    
    var body: some View {
        HStack{
            VStack(spacing: 0) {
                Text(title)
                    .b34
                    .foregroundStyle( Color.primaryText)
                    .maxLeft
                
                Text(subtitle)
                    .m14
                    .foregroundStyle( Color.placeholder)
                    .maxLeft
                    .padding(.top, 2)
            }
            .maxLeft
            
            
            Button {
                onPressed?()
            } label: {
                Text("View All")
                    .m14
                    .foregroundStyle( Color.primaryText)
            }

        }
        .h20
        .v8
    }
}

#Preview {
    SectionRow(title: "New", subtitle: "You’ve never seen it before!")
}
