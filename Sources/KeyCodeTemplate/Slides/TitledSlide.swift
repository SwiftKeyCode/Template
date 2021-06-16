//
//  BulletSlide.swift
//  Game Presentation 1
//
//  Created by Lukas Tenbrink on 15.06.21.
//

import SwiftUI

public struct TitledSlide<Content: View>: View {
	public var title: String
	@ViewBuilder public var content: () -> Content
	
	public init(title: String, @ViewBuilder content: @escaping () -> Content) {
		self.title = title
		self.content = content
	}

    public var body: some View {
		VStack {
			Text(title)
				.slideSubTitle()
			
			Spacer(minLength: 0)
			
			content()

			Spacer()
		}.padding(50)
    }
}

struct BulletSlide_Previews: PreviewProvider {
    static var previews: some View {
		TitledSlide(title: "Test") {
			Text("Content")
		}
    }
}
