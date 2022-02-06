import java.util.HashMap;
import java.util.Map;

public class Test {

	public static void main(String[] args) {
		
	HashMap<Object, String> map= new HashMap<Object, String>();
	 map.put(null, "java");
	 map.put(1, "java EE");
	 map.put(1, "Adv java");
	 System.out.println(map.get(1));
		
	}
}
