//
//  Opacity.swift
//  Game Presentation 1
//
//  Created by Lukas Tenbrink on 15.06.21.
//

import SwiftUI

public extension View {
	func highlightedOpacity(onStep: Int, current: Int?) -> some View {
		guard let current = current else { return self.opacity(0) }
		
		let opacity = (current == onStep || current == -1) ? 1
			: current >= onStep ? 0.6
			: 0
		
		return self.opacity(opacity)
	}
	
	func showWhen(_ trigger: Bool) -> some View {
		opacity(trigger ? 1 : 0)
	}
}
