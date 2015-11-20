package genericlist;

import static org.junit.Assert.*;

import org.junit.Test;

public class AppendTest {
	
	@Test
	public void test1() {
		Node<String> list = Node.fromString("a, b, c");
		assertEquals("a, b, c, d", list.append("d").toString());
	}
	
	@Test
	public void test2() {
		Node<String> list = Node.fromString("a, b");
		assertEquals("a, b, c, d", list.append("c").append("d").toString());
	}
	@Test
	public void test3() {
		Node<String> list = Node.fromString("a");
		assertEquals("a, b", list.append("b").toString());
	}

}
