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
    
    @State var isGrid = true
    @State var isShowSort = false
    @State var isShowSize = false
    @State var showFilter = false
    
    @State var selectSize: Int = -1
    
    @State var column = [
            
        GridItem(.flexible(minimum: 150), spacing: 15),
        GridItem(.flexible(minimum: 150), spacing: 15)
        
    ]
    
    @State var columnSize = [
        GridItem(.flexible(minimum: 100), spacing: 15),
        GridItem(.flexible(minimum: 100), spacing: 15),
        GridItem(.flexible(minimum: 100), spacing: 15),
    ]
    
    @State var sizeArr = [
        "XS",
        "S",
        "M",
        "L",
        "XL"
        
    ]
    
    @State var selectSort: Int = 3
    
    var body: some View {
        ZStack {
            
            VStack(spacing:0) {
                
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
                            showFilter.toggle()
                        } label: {
                            Image(systemName:  "line.3.horizontal.decrease")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 25, height: 25, alignment: .center)
                            
                            Text("Filter")
                                .r11
                                .foregroundStyle(Color.primaryText)
                        }
                        
                        
                        Button {
                            isShowSort = true
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
                            isGrid = !isGrid
                        } label: {
                            Image(systemName: isGrid  ? "list.bullet" : "square.grid.3x2.fill")
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
                .padding(.top, .topInsets)
                .background( Rectangle().fill(Color.white).shadow(color: .black.opacity(0.2) ,radius: 1, y: 1) )
                
                
                
                
                ScrollView {
                    
                    if isGrid {
                        LazyVGrid(columns: column, spacing: 20) {
                            ForEach(0..<10, id:\.self) { i in
                                ItemCell(isOffer: false,  onPress: {
                                    isShowSize.toggle()
                                })
                                    .clipped()
                                
                            }
                        }
                        .padding(20)
                    }else{
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
                                .shadow( color: Color.black.opacity(0.1) , radius: 2, y:1)
                                .h15
                                .onTapGesture {
                                    isShowSize.toggle()
                                }
                            }
                        }
                        .t15
                    }
                }
            }
            
        }
        .sheet(isPresented: $isShowSort, content: {
            
            LazyVStack(spacing: 0) {
                
                Text("Sort By")
                    .b34
                    .foregroundStyle(Color.primaryText)
                    .maxConter
                    .b15
                
                SheetRow(isSelected: selectSort == 0 , title: "Popular") {
                    selectSort = 0
                }
                
                SheetRow(isSelected: selectSort == 1 , title: "Newest") {
                    selectSort = 1
                }
                
                SheetRow(isSelected: selectSort == 2 , title: "Customer review") {
                    selectSort = 2
                }
                
                
                SheetRow(isSelected: selectSort == 3 , title: "Price: lowest to high") {
                    selectSort = 3
                }
                
                
                SheetRow(isSelected: selectSort == 4 , title: "Price: highest to low") {
                    selectSort = 5
                }
            }
            .presentationDetents([.medium, .large])
            .presentationContentInteraction(.scrolls)
            .presentationCornerRadius(25)
            
        })
        
        .sheet(isPresented: $isShowSize, content: {
            
            LazyVStack(spacing: 15) {
                
                Text("Select Size")
                    .b34
                    .foregroundStyle(Color.primaryText)
                    .maxConter
                
                LazyVGrid(columns: columnSize, spacing: 15) {
                    
                    
                    ForEach( 0..<sizeArr.count, id: \.self ) {
                        index in
                        
                        
                        
                        Button {
                            
                            selectSize = index
                                
                        } label: {
                            
                            ZStack {
                                RoundedRectangle(cornerRadius: 10)
                                    .fill(  selectSize == index ?  Color.primaryApp : Color.white  )
                                    
                                    .stroke( selectSize == index ? Color.primaryApp : Color.primaryText, lineWidth: 1  )
                                    .frame( height: 45)
                                
                                
                                Text(sizeArr[index])
                                    .s16
                                    .foregroundStyle(selectSize == index ?   Color.white : Color.primaryText)
                            }
                            .frame( height: 45)
                            
                        }
                    }
                    
                }
                .v15
                
                Divider()
                
                Button {
                    
                } label: {
                    HStack{
                        Text("Size Info")
                            .r16
                            .maxLeft
                        
                        Image(systemName: "chevron.right")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 15, height: 15)
                            
                    }
                    
                }
                .foregroundStyle(Color.primaryText)
                .frame(height: 30)
                
                Divider()
                
                
                RoundButton(title: "ADD TO CART") {
                    isShowSize = false
                }
            }
            .h20
            .presentationDetents([.medium, .large])
            .presentationContentInteraction(.scrolls)
            .presentationCornerRadius(25)
            
        })
        .bgNavLink(content: FilterScreen() , isActive: $showFilter)
        .navHide
        .background( Color.bg )
    }
}

#Preview {
    CatProductListScreen()
}
