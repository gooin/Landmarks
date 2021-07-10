//
//  LandmarksApp.swift
//  Landmarks
//
//  Created by zhitao on 2021/7/8.
//

import SwiftUI

//class AppDelegate: NSObject, UIApplicationDelegate {
//    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
//        #if DEBUG
//        var injectionBundlePath = "/Applications/InjectionIII.app/Contents/Resources"
//        #if targetEnvironment(macCatalyst)
//        injectionBundlePath = "\(injectionBundlePath)/macOSInjection.bundle"
//        #elseif os(iOS)
//        injectionBundlePath = "\(injectionBundlePath)/iOSInjection.bundle"
//        #endif
//        Bundle(path: injectionBundlePath)?.load()
//        #endif
//        return true
//    }
//}

@main
struct LandmarksApp: App {

//    @UIApplicationDelegateAdaptor(AppDelegate.self) var appDelegate

    @StateObject private var modelData = ModelData()
    var body: some Scene {
        WindowGroup {
            ContentView()
            .environmentObject(modelData)
        }
    }
}
