//
//  GradientText.swift
//  Game Presentation 1
//
//  Created by Lukas Tenbrink on 15.06.21.
//

import SwiftUI

public extension View {
	func maskFill<Content: View>(_ content: Content) -> some View {
		overlay(content).mask(self)
	}
}
