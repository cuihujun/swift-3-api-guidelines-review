
class Thread : Object {
  class func current() -> Thread
  class func detachNewThreadSelector(selector: Selector, toTarget target: AnyObject, withObject argument: AnyObject?)
  class func isMultiThreaded() -> Bool
  var threadDictionary: MutableDictionary { get }
  class func sleepUntil(date: Date)
  class func sleepForTimeInterval(ti: TimeInterval)
  class func exit()
  class func threadPriority() -> Double
  class func setThreadPriority(p: Double) -> Bool
  @available(watchOS 2.0, *)
  var threadPriority: Double
  @available(watchOS 2.0, *)
  var qualityOfService: QualityOfService
  @available(watchOS 2.0, *)
  class func callStackReturnAddresses() -> [Number]
  @available(watchOS 2.0, *)
  class func callStackSymbols() -> [String]
  @available(watchOS 2.0, *)
  var name: String?
  @available(watchOS 2.0, *)
  var stackSize: Int
  @available(watchOS 2.0, *)
  var isMainThread: Bool { get }
  @available(watchOS 2.0, *)
  class func isMainThread() -> Bool
  @available(watchOS 2.0, *)
  class func main() -> Thread
  @available(watchOS 2.0, *)
  init()
  @available(watchOS 2.0, *)
  convenience init(target: AnyObject, selector: Selector, object argument: AnyObject?)
  @available(watchOS 2.0, *)
  var isExecuting: Bool { get }
  @available(watchOS 2.0, *)
  var isFinished: Bool { get }
  @available(watchOS 2.0, *)
  var isCancelled: Bool { get }
  @available(watchOS 2.0, *)
  func cancel()
  @available(watchOS 2.0, *)
  func start()
  @available(watchOS 2.0, *)
  func main()
}
let willBecomeMultiThreadedNotification: String
let didBecomeSingleThreadedNotification: String
let threadWillExitNotification: String
extension Object {
  class func performSelectorOn(mainThread aSelector: Selector, withObject arg: AnyObject?, waitUntilDone wait: Bool, modes array: [String]?)
  func performSelectorOn(mainThread aSelector: Selector, withObject arg: AnyObject?, waitUntilDone wait: Bool, modes array: [String]?)
  class func performSelectorOn(mainThread aSelector: Selector, withObject arg: AnyObject?, waitUntilDone wait: Bool)
  func performSelectorOn(mainThread aSelector: Selector, withObject arg: AnyObject?, waitUntilDone wait: Bool)
  @available(watchOS 2.0, *)
  class func perform(aSelector: Selector, on thr: Thread, withObject arg: AnyObject?, waitUntilDone wait: Bool, modes array: [String]?)
  @available(watchOS 2.0, *)
  func perform(aSelector: Selector, on thr: Thread, withObject arg: AnyObject?, waitUntilDone wait: Bool, modes array: [String]?)
  @available(watchOS 2.0, *)
  class func perform(aSelector: Selector, on thr: Thread, withObject arg: AnyObject?, waitUntilDone wait: Bool)
  @available(watchOS 2.0, *)
  func perform(aSelector: Selector, on thr: Thread, withObject arg: AnyObject?, waitUntilDone wait: Bool)
  @available(watchOS 2.0, *)
  class func performSelectorIn(background aSelector: Selector, withObject arg: AnyObject?)
  @available(watchOS 2.0, *)
  func performSelectorIn(background aSelector: Selector, withObject arg: AnyObject?)
}