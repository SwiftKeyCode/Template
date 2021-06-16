//
//  Circle.swift
//  Game Presentation 1
//
//  Created by Lukas Tenbrink on 15.06.21.
//

import SwiftUI

public extension Circle {
	static func gradient(radius: CGFloat, gradient: Gradient) -> some View {
		Circle().fill(RadialGradient(
						gradient: gradient,
						center: .center,
						startRadius: 1,
						endRadius: radius)
		)
			.frame(width: radius * 2, height: radius * 2)
			.drawingGroup()
	}
}
