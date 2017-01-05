# MimeType

Get mime type from a file path or url extension. Like "text/html" for "/var/www/public/index.html" or "image/png" for "/home/user/cat.png".

## Installation

Add the url of this repo to your `Package.swift`:

```swift
import PackageDescription

let package = Package(
    name: "YourAwesomeSoftware",
    dependencies: [
        .Package(url: "https://github.com/onevcat/MimeType.git", 
                 majorVersion: 1)
    ]
)
```

Then run `swift build` whenever you get prepared.

You could know more information on how to use Swift Package Manager in Apple's [official page](https://swift.org/package-manager/).

## Usage

```swift
let path = "/var/www/public/index.html"
let mime = MimeType(path: path).value
// "text/html"

let url = URL(fileURLWithPath: "/home/user/cat.png")
let anotherMime = MimeType(url: url).value
// "text/html"
```

## License

MIT. See the LICENSE file.
