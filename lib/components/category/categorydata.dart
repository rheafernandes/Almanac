String categoryMockData = '''{
  "categoryInfo":[
    {
      "name": "Succulents",
      "favourite": true,
      "url": "https://images.pexels.com/photos/1022922/pexels-photo-1022922.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260",
      "path": ""
    },
    {
      "name": "Liverworts",
      "favourite": false,
      "url": "",
      "path": ""

    },
    {
      "name": "Flowering plants",
      "favourite": false,
      "url": "",
      "path": ""

    },
    {
      "name": "Herbs",
      "favourite": true,
      "url": "",
      "path": ""

    },
    {
      "name": "Ferns",
      "favourite": true,
      "url": "",
      "path": ""

    },
    {
      "name": "Fruiting",
      "favourite": false,
      "url": "",
      "path": ""

    },
        {
      "name": "Ferns",
      "favourite": false,
      "url": "",
      "path": ""

    },
        {
      "name": "Vegetables",
      "favourite": true,
      "url": "",
      "path": ""

    }
  ]
}''';

class CategoryData {
  final List<Category> categories;

  CategoryData({this.categories});

  factory CategoryData.fromMap(Map<String, dynamic> json) {
    return CategoryData(
        categories: List<Category>.from(
            json['categoryInfo'].map((x) => Category.fromMap(x))));
  }
}

class Category {
  final String name;
  final bool favourite;
  final String url;
  final String path;

  Category({this.name, this.favourite, this.url, this.path});

  factory Category.fromMap(Map<String, dynamic> json) {
    return Category(
        name: json['name'],
        favourite: json['favourite'],
        url: json['url'],
        path: json['path']);
  }
}
