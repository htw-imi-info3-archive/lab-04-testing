package list;

public class Node {
	Node next;
	Object data;

	public Node(Object data, Node next) {
		this.data = data;
		this.next = next;
	}

	public Node(Object data) {
		this.data = data;

	}

	@Override
	public String toString() {
		if (next == null)
			return data.toString();
		else
			return data.toString() + ", " + next.toString();
	}

	public Node delete(String string) {
		// TODO Auto-generated method stub
		return null;
	}
}
