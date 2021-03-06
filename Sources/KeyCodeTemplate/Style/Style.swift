//
//  File.swift
//  
//
//  Created by Lukas Tenbrink on 16.06.21.
//

import SwiftUI

public extension View {
	func withTemplateSlideStyle() -> some View {
		self
			.font(.custom("Avenir Next", size: 40))
			.frame(minWidth: 800, maxWidth: .infinity, minHeight: 600, maxHeight: .infinity)
			.background(LinearGradient.presentation)
			.hideMouseOnInactivity(seconds: 1)
	}
}
