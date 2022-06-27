class Post{
  int _id;
  String _title;
  String _url;
  String _thumb;

  Post(this._id, this._title, this._url, this._thumb);

  String get thumb => _thumb;

  set thumb(String value) {
    _thumb = value;
  }

  String get url => _url;

  set url(String value) {
    _url = value;
  }

  String get title => _title;

  set title(String value) {
    _title = value;
  }

  int get id => _id;

  set id(int value) {
    _id = value;
  }
}