//
//  LandmarkRow.swift
//  SwiftUITutorials
//
//  Created by Amaury A V A Souza on 27/03/20.
//  Copyright © 2020 Amaury A V A Souza. All rights reserved.
//

import SwiftUI

struct LandmarkRow: View {
    var landmark: Landmark
    
    
    var body: some View {
        HStack {
            landmark.image
                .resizable()
                .frame(width: 50, height: 50)
            Text(landmark.name)
            Spacer()
        }
    }
}

struct LandmarkRow_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            LandmarkRow(landmark: landmarkData[0])
       
            LandmarkRow(landmark: landmarkData[1])
               
        }
             .previewLayout(.fixed(width: 300, height: 70))
        
    }
}
