package common;

import java.util.regex.Matcher;
import java.util.regex.Pattern;

public class ImgExtract {
<<<<<<< HEAD
	
	public String imgExtract(String img) {
		
=======
   
   public String imgExtract(String img) {
      
>>>>>>> master
        Pattern pattern = Pattern.compile("<img[^>]*src=[\"']?([^>\"']+)[\"']?[^>]*>"); //img �±� src ���� ����ǥ����
        Matcher matcher = pattern.matcher(img);
        String src="";
        
         
        while(matcher.find()){
<<<<<<< HEAD
        	src=matcher.group(1);
=======
           src=matcher.group(1);
>>>>>>> master
           
            
        }
        return src;
<<<<<<< HEAD
	}

}
=======
   }

}
>>>>>>> master
