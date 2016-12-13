

import UIKit
import SnapKit

class ViewController: UIViewController {
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let redBox = UIView()
        let blueBox = UIView()
        let blackBox = UIView()
        let whiteBox = UIView()
        
        redBox.backgroundColor = UIColor.red
        blueBox.backgroundColor = UIColor.blue
        blackBox.backgroundColor = UIColor.black
        whiteBox.backgroundColor = UIColor.white
        
        self.view.addSubview(redBox)
        self.view.addSubview(blueBox)
        self.view.addSubview(blackBox)
        self.view.addSubview(whiteBox)
        
        redBox.snp.makeConstraints {
            make in
            make.top.left.right.equalTo(0)
            make.height.equalTo(self.view.snp.height).multipliedBy(0.5)
        }
        
        blueBox.snp.makeConstraints {
            make in
            make.left.bottom.equalTo(0)
            make.height.equalTo(self.view.snp.height).multipliedBy(0.5)
            make.width.equalTo(self.view.snp.width).multipliedBy(0.5)
        }
        
        blackBox.snp.makeConstraints {
            make in
            make.right.bottom.equalTo(0)
            make.width.equalTo(self.view.snp.width).multipliedBy(0.5)
            make.height.equalTo(self.view.snp.height).multipliedBy(0.5)
        }
        
        whiteBox.snp.makeConstraints{
            make in
            make.center.equalToSuperview()
//            make.center.equalTo(redBox.center)
            make.width.equalTo(100)
            make.height.equalTo(100)
        }
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

