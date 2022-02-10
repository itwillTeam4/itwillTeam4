package edu.spring.team4.method;

import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;


public class MethodTest {

	public static void main(String[] args) throws IOException {
		String s1 = "1번 ";
		String s2 = "2번 ";
		String s3 = "3번 ";
		List<String> list = Methods.toList(s1 + "     " + s2);
		list.add(s3);
		System.out.println(list + " 이건 List다");
		System.out.println(Methods.toString(list) + "이건 String이다");

		Map<String, Integer> map = new HashMap<>();
		map.put("으스스한", 4);
		map.put("유쾌한", 7);

		String s4 = Methods.toString(map);
		System.out.println(s4 + " 이건 String이다");

		String s5 = "{\"활기찬\":10,\"끔찍한\":87}";
		System.out.println(Methods.toMap(s5) + " 이건 Map이다");

	}
}
