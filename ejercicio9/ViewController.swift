import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var workSlider: UISlider!
    @IBOutlet weak var sleepSlider: UISlider!
    
    @IBOutlet weak var workLabel: UILabel!
    @IBOutlet weak var sleepLabel: UILabel!
    @IBOutlet weak var leisureLabel: UILabel!
    
    let totalLifeYears: Double = 100
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // valor inicial de los sliders
        workSlider.value = 8
        sleepSlider.value = 8
        
        updateLabels()
    }
    
    func updateLabels() {
        workLabel.text = "Horas de trabajo: \(Int(workSlider.value))"
        sleepLabel.text = "Horas de sueño: \(Int(sleepSlider.value))"
    }


}

