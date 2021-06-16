//
//  EmptySlide.swift
//  Game Presentation 1
//
//  Created by Lukas Tenbrink on 15.06.21.
//

import SwiftUI

public struct EmptySlide<Content: View>: View {
	@ViewBuilder var content: () -> Content

	public init(@ViewBuilder content: @escaping () -> Content) {
		self.content = content
	}
	
    public var body: some View {
        content()
			.padding(50)
    }
}

struct EmptySlide_Previews: PreviewProvider {
    static var previews: some View {
		EmptySlide {
			Text("Test")
		}
    }
}
