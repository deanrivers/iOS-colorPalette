
//  ViewController.swift
//  colorPalette
//
//  Created by Dean Rivers on 5/19/18.
//  Copyright © 2018 Dean Rivers. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    //color palettes
    @IBOutlet weak var colorPalette1: UIView!
    @IBOutlet weak var colorPalette2: UIView!
    @IBOutlet weak var colorPalette3: UIView!
    @IBOutlet weak var colorPalette4: UIView!
    
    //bottom screen views
    @IBOutlet weak var hexLabelView1: UIView!
    @IBOutlet weak var hexLabelView2: UIView!
    @IBOutlet weak var hexLabelView3: UIView!
    @IBOutlet weak var hexLabelView4: UIView!
    
    
    //hex value labels
    @IBOutlet weak var hexLabel1: UILabel!
    @IBOutlet weak var hexLabel2: UILabel!
    @IBOutlet weak var hexLabel3: UILabel!
    @IBOutlet weak var hexLabel4: UILabel!
    
    //click on screen button
    @IBOutlet weak var colorButton: UIButton!
    
    //click on screen label
    @IBOutlet weak var clickOnScreenLabel: UILabel!
    
    
    
    override func viewDidLoad() {
        
        //time variable to change starting point for drand48()
        let time = UInt32(NSDate().timeIntervalSinceReferenceDate)
        srand48(Int(time))
        
        
        
        super.viewDidLoad()
        
            }
    
    
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    
    @IBAction func colorButotnPressed(_ sender: Any) {
        
        //hide stuff
        clickOnScreenLabel.isHidden = true
        
        //set bottom view white background
        
        
        
        
        //let number = drand48 ()
        
        
        
        
        //reds
        let redColor1 = CGFloat(drand48())
        let redColor2 = CGFloat(drand48())
        let redColor3 = CGFloat(drand48())
        let redColor4 = CGFloat(drand48())
        
        //greens
        let greenColor1 = CGFloat(drand48())
        let greenColor2 = CGFloat(drand48())
        let greenColor3 = CGFloat(drand48())
        let greenColor4 = CGFloat(drand48())
        
        //blues
        let blueColor1 = CGFloat(drand48())
        let blueColor2 = CGFloat(drand48())
        let blueColor3 = CGFloat(drand48())
        let blueColor4 = CGFloat(drand48())
        
        //change palette backgrounds
        colorPalette1.backgroundColor = UIColor(red: redColor1, green: greenColor1, blue: blueColor1, alpha: 1.0)
        colorPalette2.backgroundColor = UIColor(red: redColor2, green: greenColor2, blue: blueColor2, alpha: 1.0)
        colorPalette3.backgroundColor = UIColor(red: redColor3, green: greenColor3, blue: blueColor3, alpha: 1.0)
        colorPalette4.backgroundColor = UIColor(red: redColor4, green: greenColor4, blue: blueColor4, alpha: 1.0)
        
        //change hex labels to match values
        //hex uses three components eg..... for #ffyyuu..... red: ff, green: yy, blue: uu
        
        
//        let rgbRedValue = 200
//        let rgbGreenValue = 13
//        let rgbBlueValue = 45
        
        
        
        
        
        //generate hex values from Float values....divide 255.5 just because this video said so at around 2:20
        //https://www.youtube.com/watch?v=0Qok2gWIazw
        
        let hexValue1 = String(format:"%02X", Int(redColor1*255.5)) + String(format:"%02X", Int(greenColor1*255.5)) + String(format:"%02X", Int(blueColor1*255.5))
        print(hexValue1)
        
        let hexValue2 = String(format:"%02X", Int(redColor2*255.5)) + String(format:"%02X", Int(greenColor2*255.5)) + String(format:"%02X", Int(blueColor2*255.5))
        print(hexValue2)
        
        let hexValue3 = String(format:"%02X", Int(redColor3*255.5)) + String(format:"%02X", Int(greenColor3*255.5)) + String(format:"%02X", Int(blueColor3*255.5))
        print(hexValue3)
        
        let hexValue4 = String(format:"%02X", Int(redColor4*255.5)) + String(format:"%02X", Int(greenColor4*255.5)) + String(format:"%02X", Int(blueColor4*255.5))
        print(hexValue4)
        
        //change text for hex value bottom of screen
        hexLabel1.text = "#\(hexValue1)"
        hexLabel2.text = "#\(hexValue2)"
        hexLabel3.text = "#\(hexValue3)"
        hexLabel4.text = "#\(hexValue4)"
        
        //change color for hex value views
        hexLabelView1.backgroundColor = UIColor(red: redColor1, green: greenColor1, blue: blueColor1, alpha: 0.5)
        hexLabelView2.backgroundColor = UIColor(red: redColor2, green: greenColor2, blue: blueColor2, alpha: 0.5)
        hexLabelView3.backgroundColor = UIColor(red: redColor3, green: greenColor3, blue: blueColor3, alpha: 0.5)
        hexLabelView4.backgroundColor = UIColor(red: redColor4, green: greenColor4, blue: blueColor4, alpha: 0.5)
        
        
    }
    
    
}



