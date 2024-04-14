abstract class ObjectCache {
  Object getByKey(String key);
  void setByKey(String key, Object value);
}
abstract class StringCache {
  String getByKey(String key);
  void setByKey(String key, String value);
}
abstract class Cache<T> {
  T getByKey(String key);
  void setByKey(String key, T value);
}
var names = <String>['Seth', 'Kathy', 'Lars'];
var uniqueNames = <String>{'Seth', 'Kathy', 'Lars'};
var pages = <String, String>{
  'index.html': 'Homepage',
  'robots.txt': 'Hints for web robots',
  'humans.txt': 'We are people, not machines'
};

void main(List<String> args) {

//var nameSet = Set<String>.from(names);
var names = <String>[];
names.addAll(['Seth', 'Kathy', 'Lars']);
print(names is List<String>); // true
  
}
class Foo<T extends Object> {
  // Any type provided to Foo for T must be non-nullable.
}
//class Foo<T extends SomeBaseClass> {
//class Extender extends SomeBaseClass {...}

//var someBaseClassFoo = Foo<SomeBaseClass>();
//var extenderFoo = Foo<Extender>();
var foo = Foo();
//print(foo); // Instance of 'Foo<SomeBaseClass>'

T first<T>(List<T> ts) {
  // Do some initial work or error checking, then...
  T tmp = ts[0];
  // Do some additional checking or processing...
  return tmp;
}
