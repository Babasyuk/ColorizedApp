//
//  ViewController.swift
//  ColorizedApp
//
//  Created by Артём on 02.11.2022.
//

import UIKit

class ViewController: UIViewController {
    
    // MARK: - IBOutlets
    @IBOutlet var colorView: UIView!
    
    @IBOutlet var redLabel: UILabel!
    @IBOutlet var greenLabel: UILabel!
    @IBOutlet var blueLabel: UILabel!
    
    @IBOutlet var redSlider: UISlider!
    @IBOutlet var greenSlider: UISlider!
    @IBOutlet var blueSlider: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // setupColorView()
        // setValue(for: redLabel, greenLabel, blueLabel)
//        setupRedSlider()
//        setupGreenSlider()
//        setupBlueSlider()
        
        redSlider.minimumTrackTintColor = .red
        greenSlider.minimumTrackTintColor = .green
        
        colorView.layer.cornerRadius = 10
        colorView.backgroundColor = UIColor(
            red: CGFloat(redSlider.value),
            green: CGFloat(greenSlider.value),
            blue: CGFloat(blueSlider.value),
            alpha: 1
        )
        
        redLabel.text = String(format: "%.2f", redSlider.value)
        greenLabel.text = String(format: "%.2f", greenSlider.value)
        blueLabel.text = String(format: "%.2f", blueSlider.value)
    }
    
    // MARK: - IBActions
    @IBAction func rgbSlider(_ sender: UISlider) {
        colorView.backgroundColor = UIColor(
            red: CGFloat(redSlider.value),
            green: CGFloat(greenSlider.value),
            blue: CGFloat(blueSlider.value),
            alpha: 1
        )
        
        redLabel.text = String(format: "%.2f", redSlider.value)
        greenLabel.text = String(format: "%.2f", greenSlider.value)
        blueLabel.text = String(format: "%.2f", blueSlider.value)
        
        /* setupColorView()
         setValue(for: redLabel, greenLabel, blueLabel)
         switch sender {
         case redSlider:
         redLabel.text = string(from: redSlider)
         case greenSlider:
         greenLabel.text = string(from: greenSlider)
         default:
         blueLabel.text = string(from: blueSlider)
         } */
    }
    
    
    // MARK: - Private Methods
    private func setupColorView() {
        colorView.layer.cornerRadius = 10
        colorView.backgroundColor = UIColor(
            red: CGFloat(redSlider.value),
            green: CGFloat(greenSlider.value),
            blue: CGFloat(blueSlider.value),
            alpha: 1
        )
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
        blueSlider.minimumValue = 0
        blueSlider.maximumValue = 255
    }
}

/*
 private func setValue(for labels: UILabel...) {
 labels.forEach { label in
 switch label {
 case redLabel:
 redLabel.text = string(from: redSlider)
 case greenLabel:
 greenLabel.text = string(from: greenSlider)
 default:
 blueLabel.text = string(from: greenSlider)
 }
 }
 */

//    private func string(from slider: UISlider) -> String {
//        String(format: "%.2f", slider.value)
//    }



