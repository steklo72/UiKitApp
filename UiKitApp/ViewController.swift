//
//  ViewController.swift
//  UiKitApp
//
//  Created by Fedotov Aleksandr on 08.09.2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var mainLabel: UILabel!
    @IBOutlet var slider: UISlider!
    @IBOutlet var switchForm: UISwitch!
    @IBOutlet var segmentedControll: UISegmentedControl!
    @IBOutlet var mainButton: UIButton!
    @IBOutlet var datePicker: UIDatePicker!
    @IBOutlet var textField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // MARK: Segmemted  Control
        segmentedControll.insertSegment(withTitle: "Third", at: 2, animated: false)
        // MARK: Label
//        mainLabel.text = ""
        mainLabel.font = mainLabel.font.withSize(30)
        mainLabel.textAlignment = .center
        mainLabel.numberOfLines = 2
        
        // MARK: SLIDER
        slider.value = 1
        slider.minimumValue = 1
        slider.maximumValue = 100
        slider.minimumTrackTintColor = .yellow
        slider.maximumTrackTintColor = .blue
        slider.thumbTintColor = UIColor(red: 255/255, green: 0/255, blue: 0/255, alpha: 1)
        mainLabel.text = String(slider.value)
        
        // MARK: TextField
//        textField.background = .white
//        textField.keyboardType = .namePhonePad
        // MARK: Button
        mainButton.layer.cornerRadius = 9
        mainButton.setTitle("Готово", for: .normal)
        // MARK: DatePicker
        
        
    }

    @IBAction func segmentedControllAction(_ sender: Any) {
        switch segmentedControll.selectedSegmentIndex {
        case 0:
            mainLabel.text = "выбран сегмент с индексом 0"
//            segmentedControll.titleForSegment(at: 0 )
            mainLabel.textColor = .red
            print("21")
        case 1:
            mainLabel.text = "выбран сегмент с индексом 1"
            mainLabel.textColor = .green
        case 2:
            mainLabel.text = "выбран сегмент с индексом 2"
            mainLabel.textColor = .blue
        default:
            break
    }
    
}
    
    @IBAction func sliderAction(_ sender: Any) {
        mainLabel.text = String(Int(slider.value))
    }
    
    @IBAction func mainButtonAction(_ sender: Any) {
        guard let text = textField.text, !text.isEmpty else {return}
        mainLabel.text = text
        }
        
    @IBAction func datePickerAction(_ sender: Any) {
        let dataFormatter = DateFormatter()
        dataFormatter.dateStyle = .full
        
        mainLabel.text = dataFormatter.string(from: datePicker.date)
    }
    
    @IBAction func toggleElements(_ sender: Any) {
        segmentedControll.isHidden = !switchForm.isOn
        mainLabel.isHidden = !switchForm.isOn
        slider.isHidden = !switchForm.isOn
        textField.isHidden = !switchForm.isOn
        mainButton.isHidden = !switchForm.isOn
        datePicker.isHidden = !switchForm.isOn
        
    }
    
    
    }
    

