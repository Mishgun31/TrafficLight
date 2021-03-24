//
//  ViewController.swift
//  TrafficLight
//
//  Created by Михаил Мезенцев on 24.03.2021.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var redLightView: UIView!
    @IBOutlet weak var yellowLightView: UIView!
    @IBOutlet weak var greenLightView: UIView!
    @IBOutlet weak var startButton: UIButton!
    
    private var currentLight = TrafficLight.noLight
    
    override func viewDidLoad() {
        super.viewDidLoad()
        redLightView.layer.cornerRadius = 50
        redLightView.alpha = 0.3
        yellowLightView.layer.cornerRadius = 50
        yellowLightView.alpha = 0.3
        greenLightView.layer.cornerRadius = 50
        greenLightView.alpha = 0.3
        startButton.layer.cornerRadius = 10
    }

    
    @IBAction func startButtonPressed() {
        switch currentLight {
        case .noLight:
            currentLight = .req
            redLightView.alpha = 1
        case .req:
            currentLight = .yellow
            redLightView.alpha = 0.3
            yellowLightView.alpha = 1
        case .yellow:
            currentLight = .green
            yellowLightView.alpha = 0.3
            greenLightView.alpha = 1
        default:
            currentLight = .req
            greenLightView.alpha = 0.3
            redLightView.alpha = 1
        }
    }
}
