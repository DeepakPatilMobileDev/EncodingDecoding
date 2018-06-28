//
//  ViewController.swift
//  EncodingDecoding
//
//  Created by Deepak P. Patil on 28/06/18.
//  Copyright © 2018 Deepak P. Patil. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        createDataToJson()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

 
    
    func createDataToJson(){
        var jsonString:String? = nil
        
        let coodi:Coordinate = Coordinate(latitude: 1.0, longitude: 123.0)
        
        let landmark:Landmark = Landmark(name: "Magarpatta", foundingYear: 2015, location: coodi)
        
        let encoder = JSONEncoder()
        encoder.outputFormatting = .prettyPrinted
        
        do {
            let data = try encoder.encode(landmark)
            
            jsonString = String(data: data, encoding: .utf8)!
            print(jsonString ?? "No Json")
            
            createDataFromJsonStirng(jstring: &jsonString!)
        
        } catch let error as NSError {
            print(error.localizedDescription)
        }
    }
    
    func createDataFromJsonStirng( jstring:inout String){
        do {
           jstring = jstring.replacingOccurrences(of: "Magarpatta", with: "")
            
            let data = jstring.data(using: .utf8)
            
            
            let deencoder = JSONDecoder()
            
            let landMArk:Landmark = try deencoder.decode(Landmark.self, from: data!)
            print(String(describing: landMArk))
            
        } catch let error as NSError {
            print(error.localizedDescription)
        }

    }
    
}

