//
//  AppDelegate.swift
//
//  This file is a part of the samples for Yandex SpeechKit Mobile SDK.
//  Version for iOS © 2016 Yandex LLC.
//
//  Licensed under the Apache License, Version 2.0 (the "License");
//  you may not use this file except in compliance with the License.
//  You may obtain a copy of the License at
//
//  http://www.apache.org/licenses/LICENSE-2.0
//
//  Unless required by applicable law or agreed to in writing, software
//  distributed under the License is distributed on an "AS IS" BASIS,
//  WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
//  See the License for the specific language governing permissions and
//  limitations under the License.

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(application: UIApplication, didFinishLaunchingWithOptions launchOptions: [NSObject: AnyObject]?) -> Bool {
        
        // Configure SpeechKit lib, this method should be called _before_ any SpeechKit functions.
        // Generate your own app key for this purpose.
        YSKSpeechKit.sharedInstance().configureWithAPIKey("069b6659-984b-4c5f-880e-aaedcfd84102");

        // [OPTIONAL] Set SpeechKit log level, for more options see YSKLogLevel enum.
        YSKSpeechKit.sharedInstance().setLogLevel(YSKLogLevel(YSKLogLevelWarn));
        
        // [OPTIONAL] Set YSKSpeechKit parameters, for all parameters and possible values see documentation.
        YSKSpeechKit.sharedInstance().setParameter(YSKDisableAntimat, withValue: "false");
        
        window = UIWindow(frame: UIScreen.mainScreen().bounds);
        
        let recognizerController = YSKRecognizerViewController(recognizerLanguage: YSKRecognitionLanguageRussian, recognizerModel: YSKRecognitionModelGeneral);
        let navigationController = UINavigationController(rootViewController: recognizerController);
        navigationController.navigationBar.translucent = true;
        window?.rootViewController = navigationController;
        
        window?.makeKeyAndVisible();
        
        return true;
    }

}