//
//  Background.swift
//  Game Presentation 1
//
//  Created by Lukas Tenbrink on 15.06.21.
//

import SwiftUI

public extension LinearGradient {
	static var presentation: LinearGradient {
		LinearGradient(gradient: Gradient(colors: [Color(#colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)), Color(#colorLiteral(red: 0.1283947527, green: 0.1311503649, blue: 0.1329419613, alpha: 1))]), startPoint: .top, endPoint: .bottom)
	}
}
