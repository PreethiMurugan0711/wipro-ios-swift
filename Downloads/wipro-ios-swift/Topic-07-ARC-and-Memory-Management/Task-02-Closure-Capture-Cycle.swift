class Downloader {

    var name: String

    var onFinish: (() -> Void)?

    init(name: String) {
        self.name = name
        print("Downloader created")
    }

    func start() {

        onFinish = { [weak self] in

            guard let self = self else {
                return
            }

            print("Finished \(self.name)")
        }
    }

    deinit {
        print("Downloader destroyed")
    }
}

var downloader: Downloader? = Downloader(name: "Swift Download")

downloader?.start()

downloader?.onFinish?()

downloader = nil

print("Program finished")