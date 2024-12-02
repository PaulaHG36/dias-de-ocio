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
        
        workSlider.value = 8
        sleepSlider.value = 8
        
        updateLabels()
    }
    
    func updateLabels() {
        workLabel.text = "Horas de trabajo: \(Int(workSlider.value))"
        sleepLabel.text = "Horas de sueño: \(Int(sleepSlider.value))"
    }

    @IBAction func calculateLeisure(_ sender: UIButton) {
        let workHours = Double(workSlider.value)
        let sleepHours = Double(sleepSlider.value)
        
        let totalHoursPerDay = workHours + sleepHours
        
        let totalHoursInLife = totalLifeYears * 365 * 24
        let occupiedHours = totalHoursPerDay * totalLifeYears * 365
        
        let leisureHours = totalHoursInLife - occupiedHours
        let leisureDays = leisureHours / 24
        
        leisureLabel.text = "Días de ocio restantes: \(Int(leisureDays))"
    }
    @IBAction func workSliderChanged(_ sender: UISlider) {
        updateLabels()
    }
    @IBAction func sleepSliderChanged(_ sender: UISlider) {
        updateLabels()
    }
    
}

