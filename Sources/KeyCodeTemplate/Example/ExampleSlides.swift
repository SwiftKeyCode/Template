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

			ForEachDeck(0 ..< AboutMe.stepCount) {
				Slide(AboutMe(step: $0))
			}
			
			SequenceDeck(AnimationSlide.sequence)
		}
			.withTemplateSlideStyle()
	}
}

struct ContentView_Previews: PreviewProvider {
	static var previews: some View {
		ContentView()
	}
}

