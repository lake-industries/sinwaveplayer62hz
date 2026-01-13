import AVFoundation

class AudioGenerator {
    let audioEngine = AVAudioEngine()
    let generator = AVAudioUnitGenerator()
    
    func playSineWave() {
        let sampleRate: Double = 44100
        let frequency: Double = 60.0
        let duration: Double = 2.0
        
        let format = AVAudioFormat(standardFormatWithSampleRate: sampleRate, channels: 1)!
        
        do {
            try audioEngine.attach(generator, to: audioEngine.mainMixerNode)
            try audioEngine.start()
        } catch {
            print("Error starting audio engine: \(error)")
        }
    }
}

class ViewController: UIViewController {
    let audioGen = AudioGenerator()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .systemBlue
        
        let playButton = UIButton(type: .system)
        playButton.setTitle("Play 60Hz Sine Wave", for: .normal)
        playButton.frame = CGRect(x: 50, y: 100, width: 200, height: 50)
        playButton.addTarget(self, action: #selector(playSoundTapped), for: .touchUpInside)
        view.addSubview(playButton)
    }
    
    @objc func playSoundTapped() {
        audioGen.playSineWave()  
                                                     
    }
}
