// MARK: global let & var
var GlobalPing = 12.84
let ValueLocalePing = 11.00
var TransferLocalePing = 11.00
var CheckPing = true


enum StatusPlaying {
    case life
    case record
}

struct MusicCast {
    static var status = ""
    static var statusPlaying: StatusPlaying = MusicCast.statusPlaying {
        didSet {
            if statusPlaying == .life {
                MusicCast.status = "On Air"
                print("Current status - \(status)")
            } else {
                MusicCast.status = "Record"
                print("Current status - \(status)")
            }
        }
    }
    var localePing = TransferLocalePing
    var globalPing = GlobalPing {
        didSet {
            if globalPing > localePing {
                globalPing = oldValue
            }
        }
    }
    init(localePing: Double, globalPing: Double) {
    }
    var checkValueLocalPing = checkPingFunc()
    lazy var resetPing = resetPingFunc()
}

// MARK: Ping checking
func checkPingFunc() -> Double {
    if !CheckPing {
        TransferLocalePing = 0
    } else {
        TransferLocalePing = ValueLocalePing
    }
    return TransferLocalePing
}

// MARK: Reset ping
func resetPingFunc() -> Double {
        TransferLocalePing = 0
        return TransferLocalePing
   }




// MARK: Checking
var musicCast = MusicCast(localePing: 11.00, globalPing: 14.00)
//testLife.globalPing = 9.00
musicCast.globalPing
MusicCast.statusPlaying = .life
MusicCast.status
MusicCast.statusPlaying = .record
MusicCast.status
musicCast.checkValueLocalPing
