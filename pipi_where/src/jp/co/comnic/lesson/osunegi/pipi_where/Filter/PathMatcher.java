package jp.co.comnic.lesson.osunegi.pipi_where.Filter;

public class PathMatcher {

	public static boolean matches(String path) {
		
		if (path.matches("/login.do") || 
			path.matches("/sign-up.*") ||
		    path.endsWith(".*(.css)|(.js)|(.gif)|(.png)|(.jpg)|(.webP)")) {
			
			return true;
		}
		
		return false;
	}
}
