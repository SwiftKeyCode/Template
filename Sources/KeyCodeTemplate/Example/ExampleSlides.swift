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
		DeckStepperView {
			Slide {
				Text("This is the Title")
					.slideTitle()
			}

			StepDeck(0 ..< AboutMe.stepCount) {
				Slide(AboutMe(step: $0))
			}
			
			Deck(AnimationSlide.sequence)
		}
			.withTemplateSlideStyle()
	}
}

struct ContentView_Previews: PreviewProvider {
	static var previews: some View {
		ContentView()
	}
}

