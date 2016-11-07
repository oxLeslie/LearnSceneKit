//
//  ViewController.swift
//  LearnSceneKit
//
//  Created by Ama on 11/7/16.
//  Copyright © 2016 Ama. All rights reserved.
//

import UIKit
import SceneKit

class ViewController: UIViewController {

    @IBOutlet weak var scnView: SCNView!
    override func viewDidLoad() {
        super.viewDidLoad()

        let url = Bundle.main.url(forResource: "yizi", withExtension: "dae")
        
        /// 创建场景
        let scene = try? SCNScene(url: url!, options: nil)
        
        scnView.scene = scene
        
        scnView.backgroundColor = UIColor.black
        
        // 开启相机
        scnView.allowsCameraControl = true
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
