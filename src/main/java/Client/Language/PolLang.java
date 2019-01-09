package Client.Language;

import java.util.HashMap;
import java.util.Map;


public class PolLang extends Language {

    public PolLang() {
        super("Polski");

    }

    @Override
    public Map<String, String> createMap() {
        Map<String,String> map = new HashMap<String, String>();

        map.put("Lang_Name", "Polski");
        map.put("Title","System wspomagania lotniska");
        map.put("Login_fail","Logowanie nie powiodło się chuju kruwa");
        map.put("Login_button","Zaloguj");
        map.put("Register_button","Zarejestruj się");
        map.put("No_Acc","Nie masz jeszcze konta?");
        map.put("Passwd_Label","Hasło");


        return map;
    }

}