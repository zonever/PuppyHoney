package common;

import java.util.regex.Matcher;
import java.util.regex.Pattern;

public class ImgExtract {
   
   public String imgExtract(String img) {
      
        Pattern pattern = Pattern.compile("<img[^>]*src=[\"']?([^>\"']+)[\"']?[^>]*>"); //img 태그 src 추출 정규표현식
        Matcher matcher = pattern.matcher(img);
        String src="";
        
         
        while(matcher.find()){
           src=matcher.group(1);
           
            
        }
        return src;
   }

}