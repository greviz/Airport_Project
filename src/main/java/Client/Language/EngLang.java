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
        map.put("Login_fail","Login failed");
        map.put("Login_button","Login");
        map.put("Register_button","Sign up");
        map.put("No_Acc","Don't have account yet?");
        map.put("Passwd_Label","Password");

        map.put("Back_button","Back");
        map.put("Logoff_button","Logout");
        map.put("Add_button","Add");
        map.put("Edit_button","Edit");
        map.put("Choose_button","Choose");
        map.put("Delete_button","Delete");
        map.put("Confirm_button","Confirm");

        map.put("Reg_passwd","Password *");
        map.put("Reg_name","Name *");
        map.put("Reg_surename","Surename *");
        map.put("Reg_phone","Phone number *");
        map.put("Reg_country","Country *");
        map.put("Reg_city","City *");
        map.put("Reg_street","Street *");
        map.put("Reg_housenumber","Home number *");
        map.put("Reg_doornumber","Door number");
        map.put("Reg_regbtn","Sign up");
        map.put("Reg_backbtn","Back to login screen");
        map.put("Reg_info","Fields marked with * are mandatory");
        map.put("Reg_regsucc","Signed up succesfully!");
        map.put("Reg_regfail","Singing up failed");

        map.put("Reg_fields","Fill all the fields!");


        //client window
        map.put("C_title","Choose an option");
        map.put("C_lotbtn","Flight search");
        map.put("C_kupbtn","Buy ticket");
        map.put("C_detailbtn","Flight details");
        map.put("C_printbtn","Print ticket");
        map.put("C_mapbtn","View airport minimap");
        //client find window
        map.put("Cf_title","Flight search");
        map.put("C_departurelbl","Departure city");
        map.put("C_arrivallbl","Arrival city");
        map.put("C_date","Date");
        map.put("Cf_searchbtn","Search");
        // client buy window
        map.put("Cb_title","Ticket choice");
        map.put("Cb_rowlbl","Row");
        map.put("Cb_seatlbl","Seat");
        map.put("Cb_buybtn","Buy ticket");
        // client check window
        map.put("Cc_title","Check ticket");
        map.put("C_ticketlbl","Insert ticket number");
        map.put("Cc_checkbtn","Check");
        //client print window
        map.put("Cp_title","Print the ticket");
        map.put("Cp_printbtn","Print");
        //client komunikaty
        map.put("flight_0","Found flights");

        map.put("flight_1","Found fligh no ");
        map.put("flight_2"," departure from ");
        map.put("flight_3"," arrival to ");
        map.put("flight_4"," \nDate & time of deaparture ");
        map.put("flight_5"," ticket cost ");

        map.put("flight_6","Looking for flight from ");
        map.put("flight_7"," to ");
        map.put("flight_8"," day ");

        //worker window
        map.put("W_plane","Add plane");
        map.put("W_airport","Add airport");
        map.put("W_flight","Add flight");
        map.put("W_edit","Edit flight");
        map.put("W_postpone","Cancel flight");
        //worker addplane
        map.put("Wap_name","Name");
        map.put("Wap_model","Model");
        map.put("Wap_seatcount","Seat count");
        //worker addairport
        map.put("Wap_country","Country");
        map.put("Wap_city","City");
        // worker add flight
        map.put("Waf_plane","Plane");
        map.put("Waf_date","Date in dd-mm-yyyy HH:MM format");
        map.put("Waf_price","Price");
        // worker editflight
        map.put("Wef_choose","Choose flight to edit");
        // worker cancelwindow
        map.put("Wcf_title","Delete flight");

        //admin window
        map.put("A_permissionbtn","Set permissions");
        map.put("A_salarysbtn","Set salary");
        //admin give window
        map.put("Ag_user","Choose user");
        map.put("Ag_clientbtn","Change to client type account");
        map.put("Ag_adminsbtn","Change to admin type account");
        map.put("Ag_techbtn","Change to technical worker type account");
        map.put("Ag_workerbtn","Change to administration worker type account");
        //admin determine window
        map.put("Ad_workerlbl","Choose worker");
        map.put("Ad_salarylbl","Set salary to");

        //technical worker window
        map.put("T_checkbtn","Choose worker");
        map.put("Ad_salarylbl","Set salary to");
        //technical worker window
        map.put("T_checkbtn","Check planes technical status");
        map.put("T_fix","Order fix");
        map.put("T_checkup","Insert date of another technical check-up");
        //technical workercheck
        map.put("T_plane","Choose plane");
        map.put("Tc_checkbtn","Check technical status");
        map.put("Tc_goodbtn","Change technical status to good");
        map.put("Tc_badbtn","Change technical status to not good");
        //technical workerorder
        map.put("Tf_fixdate","Approximate fix date");
        map.put("Tf_details","Repair details");
        //technical enter
        map.put("Te_date","Check-up date");


        return map;
    }

}