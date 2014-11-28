package list;

import static org.junit.Assert.*;

import org.junit.Before;
import org.junit.Test;
import org.junit.Ignore;
public class NodeTest {
	Node listWith4; 
	@Before
	public void setUp() throws Exception {
		listWith4 =  new Node("a",new Node("b",new Node("c", new Node("d"))));	
	}

	@Test
	public void toString1() {
		Node list = new Node("a");
		assertEquals("a",list.toString());
	}
	@Test
	public void toString2() {
		Node list = new Node("a",new Node("b",new Node("c")));
		assertEquals("a, b, c",list.toString());
	}
	@Test
	public void toString3() {
		Node list = new Node("a",new Node("b",new Node("c")));
		assertEquals("a, b, c",list.toString());
	}
	@Test
	public void toString4() {
		assertEquals("a, b, c, d",listWith4.toString());
	}
	@Test
	public void testDeleteMiddle(){
		
		Node list = listWith4.delete("b");
		assertEquals("a, c, d",list.toString());
		
	}
}
