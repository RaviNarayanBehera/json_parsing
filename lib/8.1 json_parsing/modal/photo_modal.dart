class PhotoModal
{
  late String title, url;

  PhotoModal({
    required this.title,
    required this.url,
  });

  factory PhotoModal.fromMap(Map m1) {
    return PhotoModal(title: m1['title'], url: m1['url'],);
  }
}
