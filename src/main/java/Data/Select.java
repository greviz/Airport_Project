package Data;

import java.io.Serializable;
import java.sql.ResultSet;
import java.util.ArrayList;

public class Select implements Serializable {
    String sql;


    ArrayList<Object> list;
    public Select(Select s)
    {
        this.sql = s.sql;
    }
    public Select(ArrayList<Object> list)
    {
        this.list=list;
    }
    public Select(String sql)
    {
        this.sql = sql;
    }
    public String getSql() {
        return sql;
    }


    public ArrayList<Object> getList() {
        return list;
    }

    public void setList(ArrayList<Object> list) {
        this.list = list;
    }
    public void setSql(String sql) {
        this.sql = sql;
    }
}
