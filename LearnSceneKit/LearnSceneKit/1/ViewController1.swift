//
//  ViewController1.swift
//  LearnSceneKit
//
//  Created by Ama on 11/7/16.
//  Copyright © 2016 Ama. All rights reserved.
//

import UIKit
import SceneKit

class ViewController1: UIViewController {

    var scnView: SCNView?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        addScnView()
        creatScene()
    }

    func addScnView() {
        scnView = SCNView(frame: CGRect(x: 0, y: 0, width: 300, height: 300))
        scnView?.center = view.center
        scnView?.backgroundColor = UIColor.black
        view.addSubview(scnView!)
        scnView?.allowsCameraControl = true
    }
    
    func creatScene() {
        // 创建场景
        let scene = SCNScene()
        scnView?.scene = scene
        
        // 创建节点
        let note = SCNNode()
        scene.rootNode.addChildNode(note)
        
        // 创建一个球体几何绑定到节点上去
        let sphere = SCNSphere(radius: 0.5)
        sphere.firstMaterial?.diffuse.contents = UIColor.groupTableViewBackground
        note.geometry = sphere
        
        // 给节点添加节点
        let childNode = SCNNode()
        // 设置节点位置
        childNode.position = SCNVector3Make(-0.5, -1, 0.5)
        // 设置几何形状，选择立体字体 extrusionDepth字的深度
        let text = SCNText(string: "碉堡就是碉堡不是屌爆", extrusionDepth: 0.03)
        // 颜色 
        // .firstMaterial 第一个材质 diffuse 自身发散的contents内容，我们设置为red 也可以设置图片的!
        text.firstMaterial?.diffuse.contents = UIColor.purple
        text.font = UIFont.systemFont(ofSize: 0.15)
        
        //给节点绑定几何体
        childNode.geometry = text
        note.addChildNode(childNode)
        
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
