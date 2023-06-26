class AppQueries {
  static String getHomeInfo() => '''query {
  userPicture
  
  favoriteBooks {
    id
    name
    author { 
      id
      name
    }
    cover
  }

  favoriteAuthors {
    id
    name
    picture
    booksCount
  }
  
  allBooks {
    id
    name 
    cover
    author {
      name
    }
  }
}
 ''';

  static String getBook({required String bookId}) => '''query {
  book(id: $bookId) {
    id
    name
    author {
      name
    }
    cover
    description
    isFavorite
  }
}
 ''';
}
