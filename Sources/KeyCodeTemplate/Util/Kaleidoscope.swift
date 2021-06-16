//
//  Fan.swift
//  Game Presentation 1
//
//  Created by Lukas Tenbrink on 15.06.21.
//

import SwiftUI

public struct Kaleidoscope<Content: View>: View {
	public var angles: [Angle]
	public var radius: CGFloat

	@ViewBuilder public var content: () -> Content
	
	init(angles: [Angle], radius: CGFloat = 0, @ViewBuilder content: @escaping () -> Content) {
		self.angles = angles
		self.radius = radius
		self.content = content
	}
	
	public var body: some View {
		let content = self.content()

		ZStack {
			ForEach(angles, id: \.radians) { angle in
				VStack {
					content
					
					Spacer().frame(height: radius * 2)
				}
					.rotationEffect(angle, anchor: .center)
			}
		}
	}
}

struct Fan_Previews: PreviewProvider {
	static var previews: some View {
		Kaleidoscope(angles: Angle.distributed(count: 8), radius: 50) {
			Text("Hello!")
		}.frame(width: 500, height: 500)

		Kaleidoscope(angles: Angle.linspace(from: .radians(.pi / 2), to: .radians(.pi / 2 * 3), count: 3), radius: 50) {
			Text("Hello!")
		}.frame(width: 500, height: 500)
	}
}
