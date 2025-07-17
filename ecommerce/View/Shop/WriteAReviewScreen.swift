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
    @State var showCamera: Bool = false
    @State var showPhotoLibrary: Bool = false
    @State var showImagePicker: Bool = false
    @State var imageArr:[UIImage] = []
    
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
                
                ForEach(0..<imageArr.count, id: \.self ) { index in
                                        
                    Image(uiImage: imageArr[index])
                        .resizable()
                        .scaledToFit()
                        .padding(4)
                        .frame(maxWidth: .infinity,  maxHeight: .infinity, alignment: .center)
                        .aspectRatio( 1,contentMode: .fill)
                        .background( Color.white )
                        .cornerRadius(10, corner: .allCorners)
                        .shadow(color: .black.opacity(0.1),radius: 2)
                    }
                    
                    
                    
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
                .onTapGesture {
                    showImagePicker = true
                }
                .shadow(color: .black.opacity(0.1),radius: 2)
            }
            .v15
            
            
            RoundButton(title: "SEND REVIEW") {
                
            }
            
        }
        .sheet(isPresented: $showCamera, content: {
            ImagePicker(sourceType: .camera, action: { image in
                
                if let image = image {
                    imageArr.append(image)
                }
                
            })
        })
        .sheet(isPresented: $showPhotoLibrary, content: {
            ImagePicker(sourceType: .photoLibrary, action: { image in
                if let image = image {
                    imageArr.append(image)
                }
            })
        })
        .actionSheet(isPresented: $showImagePicker, content: {
            ActionSheet(title: Text("Select"), buttons: [
                .default(Text("Photo Library"), action: {
                    showPhotoLibrary = true
                }),
                .default(Text("Camera"), action: {
                    showCamera = true
                }),
                .destructive(Text("Cancel"), action: {
                    
                })
            ])
        })
        .h20
    }
}

#Preview {
    WriteAReviewScreen()
}
