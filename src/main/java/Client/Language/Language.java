package Client.Language;

import java.util.Map;

public abstract class Language {

    private Map<String,String> map;
    private String langName;

    public Language(String name)
    {
        this.langName = name;
        this.map = createMap();
    }

    public String get(String s) {

        return map.get(s);
    }

    public String getLangName(String name) {

        return langName;
    }

    abstract public Map<String,String> createMap();

}