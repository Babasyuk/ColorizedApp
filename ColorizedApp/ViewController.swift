//
//  ViewController.swift
//  ColorizedApp
//
//  Created by Артём on 02.11.2022.
//

import UIKit

class ViewController: UIViewController {
    
    // MARK: - IB Outlets
    @IBOutlet var colorView: UIView!
    
    @IBOutlet var redSlider: UISlider!
    @IBOutlet var greenSlider: UISlider!
    @IBOutlet var blueSlider: UISlider!


    override func viewDidLoad() {
        super.viewDidLoad()
        setupColorView()
        setupRedSlider()
        setupGreenSlider()
        setupBlueSlider()
    }
    
    // MARK: - IB Actions
    @IBAction func redSliderAction() {
//        view.backgroundColor = view.backgroundColor?.withAlphaComponent(CGFloat(redSlider.value))
        colorView.backgroundColor = colorView.backgroundColor?.withAlphaComponent(CGFloat(redSlider.value))
    }
    
    
    // MARK: - Private Methods
    private func setupColorView() {
        colorView.layer.cornerRadius = 10
        
    }
    
    private func setupRedSlider() {
        redSlider.value = 0.05
        redSlider.minimumTrackTintColor = .red
        redSlider.minimumValue = 0
        redSlider.maximumValue = 255
    }
    
    private func setupGreenSlider() {
        greenSlider.value = 0.27
        greenSlider.minimumTrackTintColor = .green
        greenSlider.minimumValue = 0
        greenSlider.maximumValue = 255
    }
    
    private func setupBlueSlider() {
        blueSlider.value = 0.49
        blueSlider.minimumTrackTintColor = .blue
        blueSlider.minimumValue = 0
        blueSlider.maximumValue = 255
    }


}

