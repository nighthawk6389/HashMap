import x10.util.concurrent.AtomicReference;

/* Entry class containing key and value data as
 * as generic types
 */
public class Entry[K, V] {
	private val key:K;
	private val value:V;
	public var next:AtomicReference[Entry[K, V]] = AtomicReference.newAtomicReference[Entry[K, V]](null);

	public def this(key:K, value:V) {
		this.key = key;
		this.value = value;
		//this.next = AtomicReference.newAtomicReference[Entry[K, V]](null);
	}

	public getKey() {
		return key;
	}

	public getValue() {
		return value;
	}

	public def toString():String{
		return "["+key+","+value+"]";
	}
}

