//
//  ViewController.swift
//  HWAlarm
//
//  Created by comp on 20.10.22.
//

import UIKit

class ViewController: UIViewController {
    // MARK: Internal
    override func viewDidLoad() {
        super.viewDidLoad()
        sliderOption()
    }

    @IBAction func sliderAction(_ sender: UISlider) {
        valueTextField.text = String(Int(slider.value.rounded(.down)))
        progressView.progress = slider.value / 10
    }

    @IBAction func datePickerAction() {}
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

    final func sliderOption() {
        slider.value = 0
        slider.minimumValue = 0
        slider.maximumValue = 10
    }

    // MARK: Private

    @IBOutlet private var volumeLabel: UILabel!
    @IBOutlet private var valueTextField: UITextField!
    @IBOutlet private var progressView: UIProgressView!
    @IBOutlet private var slider: UISlider!
    @IBOutlet private var datePicker: UIDatePicker!
    @IBOutlet private var button: UIButton!
    @IBOutlet private var timeLabel: UILabel!
    @IBOutlet private var `switch`: UISwitch!
    @IBOutlet private var clearButton: UIButton!
}
