//
//  SwiftUIView.swift
//  Landmarks
//
//  Created by zhitao on 2021/7/14.
//

import SwiftUI

struct SwiftUIView: View {
    var body: some View {
        ZStack{
            Circle().fill(Color.red)
            Circle().fill(Color.yellow).scaleEffect(0.2)
        }
    }
}

struct SwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        SwiftUIView()
    }
}
