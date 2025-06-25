//
//  Text+Font.swift
//  DesignSystem
//
//  Created by Ahmed Yamany on 19/06/2025.
//
import SwiftUI

public extension View {
    func setFont(_ token: FontToken, weight: Font.Weight = .regular, font: AppFonts = .cairo) -> some View {
        self.font(fonts(weight: weight, font: font).swiftUIFont(size: token.size, relativeTo: token.style))
    }
}

public extension Text {
    func setFont(_ token: FontToken, weight: Font.Weight = .regular, font: AppFonts = .cairo) -> Text {
        self.font(fonts(weight: weight, font: font).swiftUIFont(size: token.size, relativeTo: token.style))
    }
}

private func fonts(weight: SwiftUI.Font.Weight = .regular, font: AppFonts = .cairo) -> FontConvertible {
    switch font {
    case .cairo:
        switch weight {
        case .black: return FontFamily.Cairo.black
        case .bold: return FontFamily.Cairo.bold
        case .heavy: return FontFamily.Cairo.extraBold
        case .light: return FontFamily.Cairo.light
        case .regular: return FontFamily.Cairo.regular
        case .semibold: return FontFamily.Cairo.semiBold
        case .thin: return FontFamily.Cairo.light
        case .ultraLight: return FontFamily.Cairo.extraLight
        default: return FontFamily.Cairo.regular
        }
    case .inter:
        switch weight {
        case .black: return FontFamily.Inter.black
        case .bold: return FontFamily.Inter.bold
        case .heavy: return FontFamily.Inter.extraBold
        case .light: return FontFamily.Inter.light
        case .regular: return FontFamily.Inter.regular
        case .semibold: return FontFamily.Inter.semiBold
        case .thin: return FontFamily.Inter.thin
        case .ultraLight: return FontFamily.Inter.extraLight
        default: return FontFamily.Inter.regular
        }
    }
}
