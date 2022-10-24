//
//  ViewController.swift
//  HWAlarm
//
//  Created by comp on 20.10.22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet private weak var volumeLabel: UILabel!
    @IBOutlet private weak var valueTextField: UITextField!
    @IBOutlet private weak var progressView: UIProgressView!
    @IBOutlet private weak var slider: UISlider!
    @IBOutlet private weak var datePicker: UIDatePicker!
    @IBOutlet private weak var button: UIButton!
    @IBOutlet private weak var timeLabel: UILabel!
    @IBOutlet private weak var `switch`: UISwitch!
    @IBOutlet private weak var clearButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func textFieldAction(_ sender: UITextField) {
    }
    
    @IBAction func sliderAction(_ sender: UISlider) {
        slider.minimumValue = 0
        slider.maximumValue = 10
        valueTextField.text = String (Int(slider.value.rounded(.down)))
        progressView.progress = slider.value/10
    }
    
    @IBAction func datePickerAction() {
        
    }
    
    @IBAction func buttonAction() {
        let formatter = DateFormatter()
        formatter.dateFormat = "HH:mm"
        let convertedDate = formatter.string(from: datePicker.date)
        dismiss(animated: true, completion: nil)
        timeLabel.text = String(convertedDate)
    }
    
    @IBAction func switchAction() {
        if `switch`.isOn {
            timeLabel.backgroundColor = .cyan
        } else {
            timeLabel.backgroundColor = .clear
        }
    }
    
    @IBAction func clearButtonAction() {
        timeLabel.text = ""
        `switch`.setOn(false, animated: true)
        timeLabel.backgroundColor = .clear
    }
    

}

