//
//  ViewController.swift
//  MyHelloWorld
//
//  Created by Luis Abrantes on 18/08/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var _labelValor: UILabel?;
    @IBOutlet weak var _sliderValor: UISlider?;
    @IBOutlet weak var _progressValor: UIProgressView?;
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        view.backgroundColor = .green
    }

    @IBAction
    func TestMethod() //sender: UISlider)
    {
        let valor = _sliderValor?.value ?? 0;
        //let valor = sender.value;
        
        DispatchQueue.main.async {
            self._labelValor?.text = String(valor);
            self._progressValor?.setProgress(valor, animated: true);
        }
    }
}

