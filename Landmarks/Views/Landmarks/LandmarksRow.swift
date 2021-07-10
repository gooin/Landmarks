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
            landmark.image.resizable().frame(width: 50, height: 50)
            
            Text(landmark.name)
            
            Spacer()
            
            if landmark.isFavorite{
                Image(systemName: "star.fill")
                    .foregroundColor(.yellow)
            }
        }
       
    }
}

struct LandmarksRow_Previews: PreviewProvider {
    static var landmarks = ModelData().landmarks

    static var previews: some View {
//        LandmarksRow(landmark: landmarks[0])
        Group {
            LandmarksRow(landmark: landmarks[0])
            LandmarksRow(landmark: landmarks[1])
        }
        .previewLayout(.fixed(width: 300, height: 70))
    }
}
