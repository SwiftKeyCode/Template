//
//  File.swift
//  
//
//  Created by Lukas Tenbrink on 16.06.21.
//

import KeyCode
import SwiftUI

struct ContentView: View {
	var body: some View {
		SlideDeck {
			Text("This is the Title")
				.slideTitle()

			AboutMe()
			
			AnimationSlide()
		}
			.withTemplateSlideStyle()
	}
}

struct ContentView_Previews: PreviewProvider {
	static var previews: some View {
		ContentView()
	}
}

