//
//  Styles.swift
//  Game Presentation 1
//
//  Created by Lukas Tenbrink on 15.06.21.
//

import SwiftUI

public extension Text {
	func foregroundGradientTitle() -> some View {
		maskFill(
			LinearGradient(
				gradient: Gradient(colors: [Color(#colorLiteral(red: 0, green: 0.9088575244, blue: 0.9982267022, alpha: 1)), Color(#colorLiteral(red: 0.1447228789, green: 0.2109822035, blue: 0.7956100106, alpha: 1))]),
				startPoint: .top,
				endPoint: .bottom
			)
		)
	}

	func foregroundGradientSubtitle() -> some View {
		maskFill(
			LinearGradient(
				gradient: Gradient(colors: [Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)), Color(#colorLiteral(red: 0.3495412767, green: 0.4632105827, blue: 0.5979829431, alpha: 1))]),
				startPoint: .top,
				endPoint: .bottom)
		)
	}
	
	func slideTitle() -> some View {
		self
			.font(.custom("Avenir Next", size: 100))
			.fontWeight(.semibold)
			.foregroundGradientTitle()
			.padding()
	}
	
	func slideSubTitle() -> some View {
		self
			.font(.custom("Avenir Next", size: 60))
			.fontWeight(.semibold)
			.foregroundGradientSubtitle()
			.padding()
	}
}
