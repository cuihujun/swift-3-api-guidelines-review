
enum CFStreamStatus : CFIndex {
  init?(rawValue: CFIndex)
  var rawValue: CFIndex { get }
  case notOpen
  case opening
  case open
  case reading
  case writing
  case atEnd
  case closed
  case error
}
struct CFStreamEventType : OptionSetType {
  init(rawValue: CFOptionFlags)
  let rawValue: CFOptionFlags
  static var none: CFStreamEventType { get }
  static var openCompleted: CFStreamEventType { get }
  static var hasBytesAvailable: CFStreamEventType { get }
  static var canAcceptBytes: CFStreamEventType { get }
  static var errorOccurred: CFStreamEventType { get }
  static var endEncountered: CFStreamEventType { get }
}
struct CFStreamClientContext {
  var version: CFIndex
  var info: UnsafeMutablePointer<Void>
  var retain: (@convention(c) (UnsafeMutablePointer<Void>) -> UnsafeMutablePointer<Void>)!
  var release: (@convention(c) (UnsafeMutablePointer<Void>) -> Void)!
  var copyDescription: (@convention(c) (UnsafeMutablePointer<Void>) -> Unmanaged<CFString>!)!
  init()
  init(version: CFIndex, info: UnsafeMutablePointer<Void>, retain: (@convention(c) (UnsafeMutablePointer<Void>) -> UnsafeMutablePointer<Void>)!, release: (@convention(c) (UnsafeMutablePointer<Void>) -> Void)!, copyDescription: (@convention(c) (UnsafeMutablePointer<Void>) -> Unmanaged<CFString>!)!)
}
class CFReadStream {
}
class CFWriteStream {
}
typealias CFReadStreamClientCallBack = @convention(c) (CFReadStream!, CFStreamEventType, UnsafeMutablePointer<Void>) -> Void
typealias CFWriteStreamClientCallBack = @convention(c) (CFWriteStream!, CFStreamEventType, UnsafeMutablePointer<Void>) -> Void
func CFReadStreamGetTypeID() -> CFTypeID
func CFWriteStreamGetTypeID() -> CFTypeID
let kCFStreamPropertyDataWritten: CFString!
func CFReadStreamCreateWithBytesNoCopy(alloc: CFAllocator!, _ bytes: UnsafePointer<UInt8>, _ length: CFIndex, _ bytesDeallocator: CFAllocator!) -> CFReadStream!
func CFWriteStreamCreateWithBuffer(alloc: CFAllocator!, _ buffer: UnsafeMutablePointer<UInt8>, _ bufferCapacity: CFIndex) -> CFWriteStream!
func CFWriteStreamCreateWithAllocatedBuffers(alloc: CFAllocator!, _ bufferAllocator: CFAllocator!) -> CFWriteStream!
func CFReadStreamCreateWithFile(alloc: CFAllocator!, _ fileURL: CFURL!) -> CFReadStream!
func CFWriteStreamCreateWithFile(alloc: CFAllocator!, _ fileURL: CFURL!) -> CFWriteStream!
func CFStreamCreateBoundPair(alloc: CFAllocator!, _ readStream: UnsafeMutablePointer<Unmanaged<CFReadStream>?>, _ writeStream: UnsafeMutablePointer<Unmanaged<CFWriteStream>?>, _ transferBufferSize: CFIndex)
let kCFStreamPropertyAppendToFile: CFString!
let kCFStreamPropertyFileCurrentOffset: CFString!
let kCFStreamPropertySocketNativeHandle: CFString!
let kCFStreamPropertySocketRemoteHostName: CFString!
let kCFStreamPropertySocketRemotePortNumber: CFString!
func CFStreamCreatePairWithSocket(alloc: CFAllocator!, _ sock: CFSocketNativeHandle, _ readStream: UnsafeMutablePointer<Unmanaged<CFReadStream>?>, _ writeStream: UnsafeMutablePointer<Unmanaged<CFWriteStream>?>)
func CFStreamCreatePairWithSocketToHost(alloc: CFAllocator!, _ host: CFString!, _ port: UInt32, _ readStream: UnsafeMutablePointer<Unmanaged<CFReadStream>?>, _ writeStream: UnsafeMutablePointer<Unmanaged<CFWriteStream>?>)
func CFStreamCreatePairWithPeerSocketSignature(alloc: CFAllocator!, _ signature: UnsafePointer<CFSocketSignature>, _ readStream: UnsafeMutablePointer<Unmanaged<CFReadStream>?>, _ writeStream: UnsafeMutablePointer<Unmanaged<CFWriteStream>?>)
func CFReadStreamGetStatus(stream: CFReadStream!) -> CFStreamStatus
func CFWriteStreamGetStatus(stream: CFWriteStream!) -> CFStreamStatus
@available(OSX 10.5, *)
func CFReadStreamCopyError(stream: CFReadStream!) -> CFError!
@available(OSX 10.5, *)
func CFWriteStreamCopyError(stream: CFWriteStream!) -> CFError!
func CFReadStreamOpen(stream: CFReadStream!) -> Bool
func CFWriteStreamOpen(stream: CFWriteStream!) -> Bool
func CFReadStreamClose(stream: CFReadStream!)
func CFWriteStreamClose(stream: CFWriteStream!)
func CFReadStreamHasBytesAvailable(stream: CFReadStream!) -> Bool
func CFReadStreamRead(stream: CFReadStream!, _ buffer: UnsafeMutablePointer<UInt8>, _ bufferLength: CFIndex) -> CFIndex
func CFReadStreamGetBuffer(stream: CFReadStream!, _ maxBytesToRead: CFIndex, _ numBytesRead: UnsafeMutablePointer<CFIndex>) -> UnsafePointer<UInt8>
func CFWriteStreamCanAcceptBytes(stream: CFWriteStream!) -> Bool
func CFWriteStreamWrite(stream: CFWriteStream!, _ buffer: UnsafePointer<UInt8>, _ bufferLength: CFIndex) -> CFIndex
func CFReadStreamCopyProperty(stream: CFReadStream!, _ propertyName: CFString!) -> CFTypeRef!
func CFWriteStreamCopyProperty(stream: CFWriteStream!, _ propertyName: CFString!) -> CFTypeRef!
func CFReadStreamSetProperty(stream: CFReadStream!, _ propertyName: CFString!, _ propertyValue: CFTypeRef!) -> Bool
func CFWriteStreamSetProperty(stream: CFWriteStream!, _ propertyName: CFString!, _ propertyValue: CFTypeRef!) -> Bool
func CFReadStreamSetClient(stream: CFReadStream!, _ streamEvents: CFOptionFlags, _ clientCB: CFReadStreamClientCallBack!, _ clientContext: UnsafeMutablePointer<CFStreamClientContext>) -> Bool
func CFWriteStreamSetClient(stream: CFWriteStream!, _ streamEvents: CFOptionFlags, _ clientCB: CFWriteStreamClientCallBack!, _ clientContext: UnsafeMutablePointer<CFStreamClientContext>) -> Bool
func CFReadStreamScheduleWithRunLoop(stream: CFReadStream!, _ runLoop: CFRunLoop!, _ runLoopMode: CFString!)
func CFWriteStreamScheduleWithRunLoop(stream: CFWriteStream!, _ runLoop: CFRunLoop!, _ runLoopMode: CFString!)
func CFReadStreamUnscheduleFromRunLoop(stream: CFReadStream!, _ runLoop: CFRunLoop!, _ runLoopMode: CFString!)
func CFWriteStreamUnscheduleFromRunLoop(stream: CFWriteStream!, _ runLoop: CFRunLoop!, _ runLoopMode: CFString!)
@available(OSX 10.9, *)
func CFReadStreamSetDispatchQueue(stream: CFReadStream!, _ q: dispatch_queue_t!)
@available(OSX 10.9, *)
func CFWriteStreamSetDispatchQueue(stream: CFWriteStream!, _ q: dispatch_queue_t!)
@available(OSX 10.9, *)
func CFReadStreamCopyDispatchQueue(stream: CFReadStream!) -> dispatch_queue_t!
@available(OSX 10.9, *)
func CFWriteStreamCopyDispatchQueue(stream: CFWriteStream!) -> dispatch_queue_t!
enum CFStreamErrorDomain : CFIndex {
  init?(rawValue: CFIndex)
  var rawValue: CFIndex { get }
  case custom
  case POSIX
  case macOSStatus
}
struct CFStreamError {
  var domain: CFIndex
  var error: Int32
  init()
  init(domain: CFIndex, error: Int32)
}
func CFReadStreamGetError(stream: CFReadStream!) -> CFStreamError
func CFWriteStreamGetError(stream: CFWriteStream!) -> CFStreamError