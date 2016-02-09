
@available(iOS 3.0, *)
class MPMediaPickerController : UIViewController {
  init(mediaTypes: MPMediaType)
  var mediaTypes: MPMediaType { get }
  weak var delegate: @sil_weak MPMediaPickerControllerDelegate?
  var allowsPickingMultipleItems: Bool
  @available(iOS 6.0, *)
  var showsCloudItems: Bool
  @available(iOS 9.2, *)
  var showsItemsWithProtectedAssets: Bool
  var prompt: String?
  convenience init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: Bundle?)
  init?(coder aDecoder: Coder)
  convenience init()
}
protocol MPMediaPickerControllerDelegate : ObjectProtocol {
  @available(iOS 3.0, *)
  optional func mediaPicker(mediaPicker: MPMediaPickerController, didPickMediaItems mediaItemCollection: MPMediaItemCollection)
  @available(iOS 3.0, *)
  optional func mediaPickerDidCancel(mediaPicker: MPMediaPickerController)
}