//
//  CircleImage.swift
//  SwiftUITutorials
//
//  Created by Amaury A V A Souza on 26/03/20.
//  Copyright © 2020 Amaury A V A Souza. All rights reserved.
//

import SwiftUI

struct CircleImage: View {
    var image:Image
    var body: some View {
        image
            .clipShape(Circle())
            .overlay(Circle().stroke(Color.white, lineWidth: 4))
        .shadow(radius: 10)
    }
}

struct CircleImage_Previews: PreviewProvider {
    static var previews: some View {
        CircleImage(image: Image("turtlerock"))
    }
}
