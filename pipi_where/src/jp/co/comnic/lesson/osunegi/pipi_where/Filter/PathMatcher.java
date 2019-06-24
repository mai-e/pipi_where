package jp.co.comnic.lesson.osunegi.pipi_where.Filter;

public class PathMatcher {

	public static boolean matches(String path) {
		
		if (path.matches("/login.do") || 
			path.matches("/sign-up.*") ||
			path.matches("/top") ||
			path.matches("/card_list.*") ||
		    path.endsWith(".*(.css)|(.js)|(.gif)|(.png)|(.jpg)|(.webp)")) {
			return true;
		}
		
		return false;
	}
}
