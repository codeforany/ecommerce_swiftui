//
//  RoundTextField.swift
//  ecommerce
//
//  Created by CodeForAny on 27/05/25.
//

import SwiftUI

struct RoundTextField: View {
    
    @Binding var txt: String
    @State var placeholder: String = ""
    @Binding var errorMessage: String
    @Binding var isError: Bool
    
    
    var body: some View {
        VStack {
                
            VStack(alignment: .leading) {
                
                if(!txt.isEmpty || isError) {
                    Text(placeholder)
                        .r11
                        .foregroundStyle( isError ? Color.primaryApp : Color.placeholder)
                        .maxLeft
                }
                
                HStack {
                    TextField(placeholder, text: $txt)
                        .maxLeft
                    
                    if(isError) {
                        Image(systemName: "xmark" )
                            .font(.system(size: 25))
                            .foregroundStyle( Color.primaryApp )
                    }
                    
                }
                
                   
                    
            }
            .padding()
            .background(  Color.white )
            .shadow(radius:  isError ? 0 : 2)
            .overlay( Rectangle().stroke(lineWidth: 1.2).foregroundStyle(isError ?  Color.primaryApp : Color.clear ) )
            
            if(isError) {
                Text(errorMessage)
                    .r11
                    .foregroundStyle(Color.primaryApp)
                    .maxLeft
                    .h
                    .padding(.top, 4)
            }
            
            
            
        }
        
    }
}

#Preview {
    RoundTextField(txt: .constant("Add"), placeholder: "Email",  errorMessage: .constant("Show Error"), isError: .constant(true))
        .h
}
