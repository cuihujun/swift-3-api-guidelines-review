
@available(OSX 10.10, *)
enum MCSessionSendDataMode : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case reliable
  case unreliable
}
@available(OSX 10.10, *)
enum MCSessionState : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case notConnected
  case connecting
  case connected
}
@available(OSX 10.10, *)
enum MCEncryptionPreference : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case optional
  case required
  case none
}
@available(OSX 10.10, *)
let kMCSessionMinimumNumberOfPeers: Int
@available(OSX 10.10, *)
let kMCSessionMaximumNumberOfPeers: Int
@available(OSX 10.10, *)
class MCSession : Object {
  convenience init(peer myPeerID: MCPeerID)
  init(peer myPeerID: MCPeerID, securityIdentity identity: [AnyObject]?, encryptionPreference: MCEncryptionPreference)
  func send(data: Data, toPeers peerIDs: [MCPeerID], withMode mode: MCSessionSendDataMode) throws
  func disconnect()
  func sendResourceAt(resourceURL: URL, withName resourceName: String, toPeer peerID: MCPeerID, withCompletionHandler completionHandler: ((Error?) -> Void)? = nil) -> Progress?
  func startStream(name streamName: String, toPeer peerID: MCPeerID) throws -> OutputStream
  weak var delegate: @sil_weak MCSessionDelegate?
  var myPeerID: MCPeerID { get }
  var securityIdentity: [AnyObject]? { get }
  var encryptionPreference: MCEncryptionPreference { get }
  var connectedPeers: [MCPeerID] { get }
  convenience init()
}
protocol MCSessionDelegate : ObjectProtocol {
  @available(OSX 10.10, *)
  func session(session: MCSession, peer peerID: MCPeerID, didChange state: MCSessionState)
  @available(OSX 10.10, *)
  func session(session: MCSession, didReceive data: Data, fromPeer peerID: MCPeerID)
  @available(OSX 10.10, *)
  func session(session: MCSession, didReceive stream: InputStream, withName streamName: String, fromPeer peerID: MCPeerID)
  @available(OSX 10.10, *)
  func session(session: MCSession, didStartReceivingResourceWithName resourceName: String, fromPeer peerID: MCPeerID, withProgress progress: Progress)
  @available(OSX 10.10, *)
  func session(session: MCSession, didFinishReceivingResourceWithName resourceName: String, fromPeer peerID: MCPeerID, at localURL: URL, withError error: Error?)
  @available(OSX 10.10, *)
  optional func session(session: MCSession, didReceiveCertificate certificate: [AnyObject]?, fromPeer peerID: MCPeerID, certificateHandler: (Bool) -> Void)
}
extension MCSession {
  func nearbyConnectionDataFor(peer peerID: MCPeerID, withCompletionHandler completionHandler: (Data, Error?) -> Void)
  func connectPeer(peerID: MCPeerID, withNearbyConnectionData data: Data)
  func cancelConnectPeer(peerID: MCPeerID)
}