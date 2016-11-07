//
//  LightViewController.swift
//  LearnSceneKit
//
//  Created by Ama on 11/7/16.
//  Copyright © 2016 Ama. All rights reserved.
//

import UIKit
import SceneKit

class LightViewController: UIViewController {

    var scnView: SCNView?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        scnView = SCNView(frame: view.bounds)
        scnView?.backgroundColor = UIColor.black
        scnView?.allowsCameraControl = true
        view.addSubview(scnView!)
        
        scnView?.scene = SCNScene()
        
        // 创建正方块
        let box = SCNBox(width: 0.5, height: 0.5, length: 0.5, chamferRadius: 0)
        box.firstMaterial?.diffuse.contents = UIColor.yellow
        // 创建球体
        let sphere = SCNSphere(radius: 0.1)// 设置球体半径为0.1
        sphere.firstMaterial?.diffuse.contents = UIColor.yellow
        
        // 把两个结合体绑定到节点上
        let boxNote = SCNNode()
        boxNote.geometry = box
        boxNote.position = SCNVector3Make(0, 0, -11)
        
        let sphereNode = SCNNode()
        sphereNode.geometry = sphere
        sphereNode.position = SCNVector3Make(0, 0, -10)
        
        
        // 添加节点到场景中去
        scnView?.scene?.rootNode.addChildNode(boxNote)
        scnView?.scene?.rootNode.addChildNode(sphereNode)
        
        // 添加环境光源 (不添加时系统会自动添加)
//        let light = SCNLight()
//        light.type = SCNLight.LightType.ambient
//        light.color = UIColor.yellow
//        
//        let lightNote = SCNNode()
//        lightNote.light = light
//        scnView?.scene?.rootNode.addChildNode(lightNote)
 
        
        // 添加点光源
//        let light = SCNLight()
//        light.type = SCNLight.LightType.omni
//        light.color = UIColor.yellow
//        
//        let lightNote = SCNNode()
//        lightNote.position = SCNVector3Make(0, 100, 100)
//        lightNote.light = light
//        scnView?.scene?.rootNode.addChildNode(lightNote)
        
        
        // 添加平行光源
//        let light = SCNLight()
//        light.type = SCNLight.LightType.directional
//        light.color = UIColor.yellow
//        
//        let lightNote = SCNNode()
//        //lightNote.position = SCNVector3Make(0, 0, 100)
//        lightNote.rotation = SCNVector4Make(1, 0, 0, Float(-M_PI/2.0))
//        lightNote.light = light
//        scnView?.scene?.rootNode.addChildNode(lightNote)
        
        // 添加聚焦光源
        let light = SCNLight()
        light.type = SCNLight.LightType.spot
        light.color = UIColor.yellow
        light.castsShadow = true
        light.spotOuterAngle = 15 // 设置光的发射角度
        
        let lightNote = SCNNode()
        lightNote.position = SCNVector3Make(0, 0, -9)
        lightNote.light = light
        scnView?.scene?.rootNode.addChildNode(lightNote)
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
