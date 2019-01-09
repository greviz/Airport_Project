package Client.Language;


import java.util.HashMap;
import java.util.Map;


public class EngLang extends Language {

    public EngLang() {
        super("English");

    }

    @Override
    public Map<String, String> createMap() {
        Map<String,String> map = new HashMap<String, String>();

        map.put("Lang_Name", "English");
        map.put("Title","System wspomagania lotniska");
        map.put("Login_fail","Suck my dick =]");
        map.put("Login_button","Login");
        map.put("Register_button","Sign up");
        map.put("No_Acc","Don't have account yet?");
        map.put("Passwd_Label","Password");

        return map;
    }

}