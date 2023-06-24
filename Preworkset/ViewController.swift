//
//  ViewController.swift
//  Preworkset
//
//  Created by Allen Odoom on 6/22/23.
//

import UIKit

class ViewController: UIViewController {
    
    var currentBackgroundColor: UIColor = .white

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    
    
    //For creating instance of changeColor function to allow for the
    //Changing of our background
    @IBAction func changeBackgroundColor(_ sender: UIButton) {
        
        currentBackgroundColor = changeColor()
        view.backgroundColor = currentBackgroundColor
    }
    
    //Logic for getting random color with rgb
    func changeColor() -> UIColor{
        
        let red = CGFloat.random(in: 0...1)
        let green = CGFloat.random(in: 0...1)
        let blue = CGFloat.random(in: 0...1)
        
        return UIColor(red: red, green: green, blue: blue, alpha: 0.5)
    }
    
    
    //Using slider to allow user to modify opacity
    @IBAction func Ochanger(_ sender: UISlider) {
        let newAlpha = CGFloat(sender.value)
        view.backgroundColor = currentBackgroundColor.withAlphaComponent(newAlpha)
    }
    
    
    
    //For when you click on my name
    @IBAction func nameButton(_ sender: UIButton) {
        let message: String = "Hello there! My name is Allen Odoom and I am a rising second year student at Penn State University. I like lifting, coding, cooking, photography, and playing video games. I aspire to become a software engineer soon."
        
        let alertController = UIAlertController(title: "About Me", message: message, preferredStyle: .alert)
        
        let okAction = UIAlertAction(title: "Very Cool", style: .default)
        
        alertController.addAction(okAction)
        
        present(alertController, animated: true, completion: nil)
    }
    
    
    
    //For when you click on the University
    @IBAction func uniButton(_ sender: UIButton) {
        let message: String = "At Penn State I am involved in National Society of Black Engineers(NSBE), bodybuilding club, and Nittany Data Labs! I like going to the PSU sporting events and also have a good support group around me."
        
        let alertController = UIAlertController(title: "PSU Life", message: message, preferredStyle: .alert)
        
        let okAction = UIAlertAction(title: "Very Very Cool", style: .default)
        
        alertController.addAction(okAction)
        
        present(alertController, animated: true, completion: nil)
    }
    
}

