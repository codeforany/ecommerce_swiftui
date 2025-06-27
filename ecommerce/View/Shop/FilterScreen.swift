//
//  FilterScreen.swift
//  ecommerce
//
//  Created by CodeForAny on 25/06/25.
//

import SwiftUI
import Sliders

struct FilterScreen: View {
    @Environment(\.presentationMode) var mode: Binding<PresentationMode>
    @State var minVale: Float = 0.0
    @State var maxValue: Float = 5000.0
    @State var priceRange: ClosedRange<Float> = 0.25...0.5
    @State var selectColor: [Color] = []
    @State var colorsArr = [
        Color.red,
        Color.green,
        Color.blue,
        Color.yellow,
        Color.purple,
        Color.black
    ]
    
    @State var selectSize: [String] = []
    
    @State var sizeArr = [
        "XS",
        "S",
        "M",
        "L",
        "XL"
        
    ]
    
    @State var categoryArr = [
        "All","Women", "Men", "Boys", "Girls"
    ]
    
    @State var selectCategory: [String] = []
    
    @State var column = [
        GridItem(.flexible(minimum: 100), spacing: 15),
        GridItem(.flexible(minimum: 100), spacing: 15),
        GridItem(.flexible(minimum: 100), spacing: 15),
    ]
    
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
                    
                    
                    Text("Filters")
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
                .background( Rectangle().fill(Color.white).shadow(color: .black.opacity(0.2) ,radius: 1, y: 1) )
                
                ScrollView {
                    VStack(spacing: 0){
                        Text("Price range")
                            .s18
                            .foregroundStyle(Color.primaryText)
                            .maxLeft
                            .h15
                            .v15
                        
                        ZStack(alignment: .top) {
                            
                            let lValue = priceRange.lowerBound * maxValue
                            
                            let uValue = priceRange.upperBound * maxValue
                        
                            HStack {
                                Text( "\( lValue, specifier: "%.1f" )" )
                                    .m14
                                    .foregroundStyle(Color.primaryText)
                                    .maxLeft
                                    .h15
                                    .v15
                                
                                Text("\( uValue, specifier: "%.1f" )")
                                    .m14
                                    .foregroundStyle(Color.primaryText)
                                    .maxRight
                                    .h15
                                    .v15
                            }
                            .padding(.bottom, 50)
                            
                            
                            RangeSlider(range: $priceRange, distance: 0.0 ... 1.0)
                                .rangeSliderStyle(
                                    HorizontalRangeSliderStyle(
                                        track:
                                            HorizontalRangeTrack(
                                                view: Capsule().foregroundColor(Color.primaryApp)
                                            )
                                            .background(Capsule().foregroundColor(Color.primaryApp.opacity(0.25)))
                                            .frame(height: 8),
                                        lowerThumb: Circle().foregroundColor(Color.primaryApp),
                                        upperThumb: Circle().foregroundColor(Color.primaryApp),
                                        lowerThumbSize: CGSize(width: 32, height: 32),
                                        upperThumbSize: CGSize(width: 32, height: 32),
                                        options: .forceAdjacentValue
                                    )
                                )
                                .h15
                        }
                        .background( Color.white )
                        .shadow( color: Color.black.opacity(0.1) ,radius: 1, y: 1)
                       
                        
                        Text("Colors")
                            .s18
                            .foregroundStyle(Color.primaryText)
                            .maxLeft
                            .h15
                            .v15
                        
                        ScrollView( .horizontal, showsIndicators: false) {
                            LazyHStack(spacing: 20) {
                                
                                ForEach( 0..<colorsArr.count, id: \.self ) {
                                    index in
                                    
                                    let isSelectColor = selectColor.contains { cObj in
                                        return cObj == colorsArr[index]
                                    }
                                    
                                    Button {
                                        
                                        if isSelectColor  {
                                            selectColor.removeAll { cObj in
                                                return cObj == colorsArr[index]
                                            }
                                        }else{
                                            selectColor.append(colorsArr[index])
                                        }
                                            
                                    } label: {
                                        Circle()
                                            .fill( colorsArr[index] )
                                            .frame(width: 40, height: 40)
                                            .overlay(
                                                RoundedRectangle(cornerRadius: 20)
                                                    .stroke( isSelectColor ? Color.primaryApp : Color.white, lineWidth: 1  )
                                            )
                                        
                                    }
                                }
                                
                            }
                            .padding(15)
                            .h15
                        }
                        .background( Color.white )
                        .background( Rectangle().fill(Color.white).shadow(color: .black.opacity(0.2) ,radius: 1, y: 1) )
                        
                        
                        
                        Text("Sizes")
                            .s18
                            .foregroundStyle(Color.primaryText)
                            .maxLeft
                            .h15
                            .v15
                        
                        ScrollView( .horizontal, showsIndicators: false) {
                            LazyHStack(spacing: 20) {
                                
                                ForEach( 0..<sizeArr.count, id: \.self ) {
                                    index in
                                    
                                    let isSelect = selectSize.contains { cObj in
                                        return cObj == sizeArr[index]
                                    }
                                    
                                    Button {
                                        
                                        if isSelect  {
                                            selectSize.removeAll { cObj in
                                                return cObj == sizeArr[index]
                                            }
                                        }else{
                                            selectSize.append(sizeArr[index])
                                        }
                                            
                                    } label: {
                                        
                                        ZStack {
                                            RoundedRectangle(cornerRadius: 10)
                                                .fill(  isSelect ?  Color.primaryApp : Color.white  )
                                                
                                                .stroke( isSelect ? Color.primaryApp : Color.primaryText, lineWidth: 1  )
                                                .frame(width: 45, height: 45)
                                            
                                            
                                            Text(sizeArr[index])
                                                .s16
                                                .foregroundStyle(isSelect ?   Color.white : Color.primaryText)
                                        }
                                        .frame(width: 45, height: 45)
                                        
                                        
                                        
                                    }
                                }
                                
                            }
                            .padding(15)
                            .h15
                        }
                        .background( Color.white )
                        .background( Rectangle().fill(Color.white).shadow(color: .black.opacity(0.2) ,radius: 1, y: 1) )
                        
                        Text("Category")
                            .s18
                            .foregroundStyle(Color.primaryText)
                            .maxLeft
                            .h15
                            .v15
                        
                        ScrollView( .horizontal, showsIndicators: false) {
                            
                            LazyVGrid(columns: column, spacing: 15) {
                                
                                
                                ForEach( 0..<categoryArr.count, id: \.self ) {
                                    index in
                                    
                                    let isSelect = selectCategory.contains { cObj in
                                        return cObj == categoryArr[index]
                                    }
                                    
                                    Button {
                                        
                                        if isSelect  {
                                            selectCategory.removeAll { cObj in
                                                return cObj == categoryArr[index]
                                            }
                                        }else{
                                            selectCategory.append(categoryArr[index])
                                        }
                                            
                                    } label: {
                                        
                                        ZStack {
                                            RoundedRectangle(cornerRadius: 10)
                                                .fill(  isSelect ?  Color.primaryApp : Color.white  )
                                                
                                                .stroke( isSelect ? Color.primaryApp : Color.primaryText, lineWidth: 1  )
                                                .frame(width: .infinity, height: 45)
                                            
                                            
                                            Text(categoryArr[index])
                                                .s16
                                                .foregroundStyle(isSelect ?   Color.white : Color.primaryText)
                                        }
                                        .frame(width: .infinity, height: 45)
                                        
                                        
                                        
                                    }
                                }
                                
                            }
                            .padding(15)
                            .h15
                            
                        }
                        .background( Color.white )
                        .background( Rectangle().fill(Color.white).shadow(color: .black.opacity(0.2) ,radius: 1, y: 1) )
                        
                        
                        Button {
                            
                        } label: {
                            
                            HStack{
                                VStack{
                                    Text("Brand")
                                        .s18
                                        .foregroundStyle(Color.primaryText)
                                        .maxLeft
                                    
                                    Text("adidas Originals, Jack & Jones, s.Oliver")
                                        .r11
                                        .foregroundStyle(Color.placeholder)
                                        .maxLeft
                                        
                                }
                                
                                Image(systemName: "chevron.right")
                            }
                            
                        }
                        .h15
                        .v15
                        .v15
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
    FilterScreen()
}
