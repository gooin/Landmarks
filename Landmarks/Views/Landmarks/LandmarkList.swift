//
//  LandmarkList.swift
//  Landmarks
//
//  Created by zhitao on 2021/7/9.
//

import SwiftUI

struct LandmarkList: View {

    @EnvironmentObject var modelData: ModelData

    @State private var showFavouritesOnly = false

    var filteredLandmarks: [Landmark] {
        modelData.landmarks.filter { landmark in
            (!showFavouritesOnly || landmark.isFavorite)
        }
    }

    var body: some View {
        NavigationView {
            List {
                Toggle(isOn: $showFavouritesOnly){
                    Text("Favorites only")
                }
                ForEach(filteredLandmarks) { landmark in
                    NavigationLink(destination: LandmarkDetail(landmark: landmark)){
                        LandmarksRow(landmark: landmark)
                    }
                }
            }.navigationTitle("Landmarks")
        }
       
    }
}

struct LandmarkList_Previews: PreviewProvider {
    static var previews: some View {
//        ForEach(["iPhone SE (2nd generation)", "iPhone XS Max", "iPad Air (3th generation)"], id: \.self) { deviceName in
//            LandmarkList()
//                .previewDevice(PreviewDevice(rawValue: deviceName))
//                .previewDisplayName(deviceName)
//        }
        LandmarkList()
        .environmentObject(ModelData())
    }
}
