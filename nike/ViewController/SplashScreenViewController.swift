//
//  SplashScreenViewController.swift
//  nike
//
//  Created by Pasha on 18.01.2025.
//

import UIKit

class SplashScreenViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        DispatchQueue.main.asyncAfter(deadline: .now() + 1.0) {
            self.goToMainScreen()
        }
    }

    private func goToMainScreen() {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        
        let mainViewController = storyboard.instantiateViewController(withIdentifier: "welcomeScreen")

        let sceneDelegate = UIApplication.shared.connectedScenes.first?.delegate as? SceneDelegate
        sceneDelegate?.window?.rootViewController = mainViewController
        sceneDelegate?.window?.makeKeyAndVisible()
    }
}
