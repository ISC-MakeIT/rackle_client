abstract class APICLient {}

// らっくるDBのinterface
abstract class RackleDataBase<K, V> {
  Future<void> set(K key, V value);

  Future<V> get(K key);
}
