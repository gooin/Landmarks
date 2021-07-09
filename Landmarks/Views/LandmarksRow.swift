//
//  LandmarksRow.swift
//  Landmarks
//
//  Created by zhitao on 2021/7/9.
//

import SwiftUI

struct LandmarksRow: View {
    var landmark: Landmark
    
    var body: some View {
        HStack {
            landmark.image.resizable().frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: 100)
            
            Text(landmark.name)
            
            Spacer()
        }
       
    }
}

struct LandmarksRow_Previews: PreviewProvider {
    static var previews: some View {
//        LandmarksRow(landmark: landmarks[0])
        Group {
            LandmarksRow(landmark: landmarks[1])
            LandmarksRow(landmark: landmarks[2])
        }
        .previewLayout(.fixed(width: 300, height: 70))
    }
}
