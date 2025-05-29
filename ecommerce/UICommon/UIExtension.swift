//
//  UIExtension.swift
//  ecommerce
//
//  Created by CodeForAny on 22/05/25.
//

import SwiftUI

enum Metropolis: String {
    case regular = "Metropolis-Regular"
    case medium = "Metropolis-Medium"
    case semibold = "Metropolis-SemiBold"
    case bold = "Metropolis-Bold"
}

extension Font {
    static func customfont(_ font: Metropolis, fontSize: CGFloat) -> Font {
        custom(font.rawValue, size: fontSize)
    }
    
    
}

extension CGFloat {
    static var screenWidth: Double {
        return UIScreen.main.bounds.size.width
    }
    
    static var screenHeight: Double {
        return UIScreen.main.bounds.size.height
    }
    
    static func widthPer(per: Double) -> Double {
        return (screenWidth * per);
        // 375 * 0.5
    }
    
    static func heightPer(per: Double) -> Double {
        return (screenHeight * per);
        // 375 * 0.5
    }
    
    static var topInsets: Double {
        if let keyWindow = (UIApplication.shared.connectedScenes.first  as? UIWindowScene)?.windows.first {
            return keyWindow.safeAreaInsets.top
        }
        return 0.0
    }
    
    static var bottomInsets: Double {
        if let keyWindow = (UIApplication.shared.connectedScenes.first  as? UIWindowScene)?.windows.first {
            return keyWindow.safeAreaInsets.bottom
        }
        return 0.0
    }
    
    static var horizontalInsets: Double {
        if let keyWindow = (UIApplication.shared.connectedScenes.first  as? UIWindowScene)?.windows.first {
            return keyWindow.safeAreaInsets.left  + keyWindow.safeAreaInsets.right
        }
        return 0.0
    }
    
    static var verticalInsets: Double {
        if let keyWindow = (UIApplication.shared.connectedScenes.first  as? UIWindowScene)?.windows.first {
            return keyWindow.safeAreaInsets.top  + keyWindow.safeAreaInsets.bottom
        }
        return 0.0
    }
    
}

extension Color {
    
    static var primaryApp: Color {
        return Color(hex: "DB3022")
    }
    
    static var secondaryApp: Color {
        return Color(hex: "2AA952")
    }
    
    static var primaryText: Color {
        return Color(hex: "222222")
    }
    
    static var secondaryText: Color {
        return Color(hex: "9B9B9B")
    }
    
    static var whiteText: Color {
        return .white
    }
    
    static var placeholder: Color {
        return .secondaryText
    }
    
    static var bg: Color {
        return Color(hex: "F9F9F9")
    }
    
    
    init (hex: String) {
        let hex = hex.trimmingCharacters(in: .alphanumerics.inverted)
        var int: UInt64 = 0
        Scanner(string: hex).scanHexInt64(&int)
        let a, r, g, b: UInt64
        switch hex.count {
            case 3: // RGB(12 -bit)
                (a, r, g, b) = (255, (int >> 8) * 17, (int >> 4 & 0xF) * 17, (int & 0xF) * 17)
            case 6: // RGB (24-bit)
                (a, r, g, b) = (255, int >> 16, int >> 8 & 0xFF, int & 0xFF)
            case 8: // ARGB (32-bit)
                (a, r, g, b) = (int >> 24, int >> 16 & 0xFF, int >> 8 & 0xFF, int & 0xFF)
            default:
                (a, r, g, b) = (1, 1, 1, 0)
        }
        
        self.init(
            .sRGB,
            red: Double(r) / 255,
            green: Double(g) / 255,
            blue:  Double(b) / 255,
            opacity: Double(a) / 255
        )
    }
    
}

extension View {
    func cornerRadius(_ radius: CGFloat, corner: UIRectCorner ) -> some View {
        clipShape(RoundedCorner(radius: radius, corner: corner))
    }
    
    var maxLeft: some View {
        self.frame(maxWidth: .infinity, alignment: .leading)
    }
    
    var maxRight: some View {
        self.frame(maxWidth: .infinity, alignment: .trailing)
    }
    
    var maxConter: some View {
        self.frame(maxWidth: .infinity, alignment: .center)
    }
    
    var t8: some View {
        self.padding(.top,8)
    }
    
    var t15: some View {
        self.padding(.top,15)
    }
    
    var v8: some View {
        self.padding(.vertical,8)
    }
    
    var v15: some View {
        self.padding(.vertical,15)
    }
    
    var v: some View {
        self.padding(.vertical)
    }
    
    var h8: some View {
        self.padding(.horizontal,8)
    }
    
    var h15: some View {
        self.padding(.horizontal,15)
    }
    
    var h20: some View {
        self.padding(.horizontal,20)
    }
    
    var h: some View {
        self.padding(.horizontal)
    }
    
    var b8: some View {
        self.padding(.bottom,8)
    }
    
    var b15: some View {
        self.padding(.bottom,15)
    }
    
    var r11: some View {
        
        self.font(.customfont(.regular, fontSize: 11))
        
    }
    
    var r14: some View {
        self.font(.customfont(.regular, fontSize: 14))
    }
    
    var r16: some View {
        self.font(.customfont(.regular, fontSize: 16))
    }
    
    var m14: some View {
        self.font(.customfont(.medium, fontSize: 14))
    }
     var s16: some View {
         self.font(.customfont(.semibold, fontSize: 16))
    }
    
     var s18: some View {
         self.font(.customfont(.semibold, fontSize: 18))
    }
    
     var s24: some View {
         self.font(.customfont(.semibold, fontSize: 24))
    }
    
     var b34: some View {
         self.font(.customfont(.bold, fontSize: 34))
    }
    
    
    var navHide: some View {
        return navigationTitle("")
        .navigationBarHidden(true)
        .navigationBarBackButtonHidden()
        .ignoresSafeArea()
    }
    
    var navHideWithout: some View {
        return navigationTitle("")
        .navigationBarHidden(true)
        .navigationBarBackButtonHidden()
        
    }
    
    func bgNavLink( content: some View, isActive: Binding<Bool> ) -> some View {
        
        return self.background( NavigationLink(destination: content, isActive: isActive, label: { EmptyView()}) )
    }
    
}

struct RoundedCorner: Shape {
    var radius: CGFloat = .infinity
    var corner: UIRectCorner = .allCorners
    
    func path(in rect: CGRect) -> Path {
       return Path(UIBezierPath(
            roundedRect: rect,
            byRoundingCorners: corner,
            cornerRadii: CGSize(width: radius, height: radius)
       ).cgPath)
    }
}

extension Binding {
    static func ?? (lhs: Binding< Optional<Value>>, rhs:Value ) -> Binding<Value> {
        Binding {
            lhs.wrappedValue ?? rhs
        } set: {
            
            lhs.wrappedValue = $0
        }
    }
}
