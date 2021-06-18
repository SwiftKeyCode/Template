//
//  Opacity.swift
//  Game Presentation 1
//
//  Created by Lukas Tenbrink on 15.06.21.
//

import SwiftUI

public extension View {
	func showWhen(_ trigger: Bool) -> some View {
		opacity(trigger ? 1 : 0)
	}
}
