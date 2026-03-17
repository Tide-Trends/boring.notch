import AppKit
import Foundation

let size = NSSize(width: 1024, height: 1024)
let image = NSImage(size: size)
image.lockFocus()

let rect = NSRect(origin: .zero, size: size)
let path = NSBezierPath(roundedRect: rect, xRadius: 220, yRadius: 220)
let gradient = NSGradient(colors: [
    NSColor(calibratedRed: 0.05, green: 0.06, blue: 0.08, alpha: 1),
    NSColor(calibratedRed: 0.11, green: 0.12, blue: 0.16, alpha: 1)
])!
gradient.draw(in: path, angle: 90)

let glowRect = NSRect(x: 140, y: 380, width: 744, height: 220)
let glow = NSBezierPath(roundedRect: glowRect, xRadius: 110, yRadius: 110)
NSColor(calibratedRed: 0.15, green: 0.55, blue: 1.0, alpha: 0.25).setFill()
glow.fill()

let notch = NSBezierPath(roundedRect: NSRect(x: 330, y: 760, width: 364, height: 92), xRadius: 46, yRadius: 46)
NSColor.black.setFill()
notch.fill()

let waveform = NSBezierPath()
waveform.lineWidth = 32
waveform.lineCapStyle = .round
waveform.move(to: NSPoint(x: 200, y: 500))
waveform.line(to: NSPoint(x: 330, y: 500))
waveform.line(to: NSPoint(x: 390, y: 600))
waveform.line(to: NSPoint(x: 470, y: 400))
waveform.line(to: NSPoint(x: 560, y: 630))
waveform.line(to: NSPoint(x: 630, y: 470))
waveform.line(to: NSPoint(x: 820, y: 470))

let waveGradient = NSGradient(colors: [
    NSColor(calibratedRed: 0.15, green: 0.78, blue: 1.0, alpha: 1),
    NSColor(calibratedRed: 1.0, green: 0.58, blue: 0.2, alpha: 1)
])!
waveGradient.draw(in: waveform, angle: 0)

image.unlockFocus()

let outputPath = "/Users/lukaah/AI/macOS Notch/boring.notch/boringNotch/Assets.xcassets/AppIcon.appiconset/dynamicstage-1024.png"
if let tiffData = image.tiffRepresentation,
   let bitmap = NSBitmapImageRep(data: tiffData),
   let pngData = bitmap.representation(using: .png, properties: [:]) {
    try pngData.write(to: URL(fileURLWithPath: outputPath))
}
