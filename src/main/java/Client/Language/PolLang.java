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

        //start window
        map.put("Lang_Name", "Polski");
        map.put("Title","System wspomagania lotniska");
        map.put("Login_fail","Logowanie nie powiodło się");
        map.put("Login_button","Zaloguj");
        map.put("Register_button","Zarejestruj się");
        map.put("No_Acc","Nie masz jeszcze konta?");
        map.put("Passwd_Label","Hasło");

        //rejestracja
        map.put("Reg_passwd","Hasło *");
        map.put("Reg_name","Imię *");
        map.put("Reg_surename","Nazwisko *");
        map.put("Reg_phone","Nr telefonu *");
        map.put("Reg_country","Kraj *");
        map.put("Reg_city","Miejscowość *");
        map.put("Reg_street","Ulica *");
        map.put("Reg_housenumber","Nr domu *");
        map.put("Reg_doornumber","Nr lokalu");
        map.put("Reg_regbtn","Zarejestruj chujku");
        map.put("Reg_backbtn","Wróć do ekranu logowania");
        map.put("Reg_info","Pola oznaczone * są obowiązkowe");
        map.put("Reg_regsucc","Rejestracja zakończona sukcesem");
        map.put("Reg_regfail","Rejestracja zakończona niepowodzeniem");
        map.put("Reg_fields","Uzupełnij wszystkie pola!");

        //buttony ktore wystepuja wszedzie
        map.put("Back_button","Cofnij");
        map.put("Logoff_button","Wyloguj");
        map.put("Add_button","Dodaj");
        map.put("Edit_button","Edytuj");
        map.put("Choose_button","Wybierz");
        map.put("Delete_button","Usuń");
        map.put("Confirm_button","Potwierdź");

        //client window
        map.put("C_title","Wybierz funkcje");
        map.put("C_lotbtn","Wyszukaj lot");
        map.put("C_kupbtn","Kup bilet");
        map.put("C_detailbtn","Sprawdź szczegóły lotu");
        map.put("C_printbtn","Drukuj bilet");
        map.put("C_mapbtn","Podgląd mapy lotniska");
        //client find window
        map.put("Cf_title","Wyszukiwanie lotu");
        map.put("C_departurelbl","Miasto wylotu");
        map.put("C_arrivallbl","Miasto przylotu");
        map.put("C_date","Termin");
        map.put("Cf_searchbtn","Szukaj");
        // client buy window
        map.put("Cb_title","Wybór biletu");
        map.put("Cb_rowlbl","Rząd");
        map.put("Cb_seatlbl","Miejsce");
        map.put("Cb_buybtn","Kup bilet");
        // client check window
        map.put("Cc_title","Sprawdź bilet");
        map.put("C_ticketlbl","Wprowadź numer biletu");
        map.put("Cc_checkbtn","Sprawdź");
        //client print window
        map.put("Cp_title","Drukuj bilet");
        map.put("Cp_printbtn","Drukuj");
        //client komunikaty
        map.put("flight_0","Znalezione loty");

        map.put("flight_1","Znaleziono lot nr ");
        map.put("flight_2"," wylot z ");
        map.put("flight_3"," przylot do ");
        map.put("flight_4"," \nData i czas wylotu ");
        map.put("flight_5"," cena biletu ");

        map.put("flight_6","Poszukiwany lot z ");
        map.put("flight_7"," do ");
        map.put("flight_8"," dnia ");


        //worker window
        map.put("W_plane","Dodaj samolot");
        map.put("W_airport","Dodaj lotnisko");
        map.put("W_flight","Dodaj lot");
        map.put("W_edit","Edytuj lot");
        map.put("W_postpone","Odwołaj lot");
        //worker addplane
        map.put("Wap_name","Nazwa");
        map.put("Wap_model","Model");
        map.put("Wap_seatcount","Ilość miejsc");
        //worker addairport
        map.put("Wap_country","Kraj");
        map.put("Wap_city","Miasto");
        // worker add flight
        map.put("Waf_plane","Samolot");
        map.put("Waf_date","Termin w formacie dd-mm-yyyy HH:HH");
        map.put("Waf_price","Cena");
        // worker editflight
        map.put("Wef_choose","Wybierz lot do edycji");
        // worker cancelwindow
        map.put("Wcf_title","Usuń lot");

        //admin window
        map.put("A_permissionbtn","Nadaj uprawnienia");
        map.put("A_salarybtn","Ustal pensje");
        //admin give window
        map.put("Ag_user","Wybierz użytkownika");
        map.put("Ag_clientbtn","Zmień na konto typu klient");
        map.put("Ag_adminsbtn","Zmień na konto typu administrator");
        map.put("Ag_techbtn","Zmień na konto typu pracownik techniczny");
        map.put("Ag_workerbtn","Zmień na konto typu pracownik administracyjny");
        //admin determine window
        map.put("Ad_workerlbl","Wybierz pracownika");
        map.put("Ad_salarylbl","Wprowadź pensję");


        //technical worker window
        map.put("T_checkbtn","Sprawdź stan techniczny samolotu");
        map.put("T_fix","Zleć naprawę");
        map.put("T_checkup","Wprowadź termin kolejnego przeglądu okresowego");
        //technical workercheck
        map.put("T_plane","Wybierz samolot");
        map.put("Tc_checkbtn","Sprawdź stan techniczny");
        map.put("Tc_goodbtn","Zmień stan techniczny na sprawny");
        map.put("Tc_badbtn","Zmień stan techniczny na niesprawny");
        //technical workerorder
        map.put("Tf_fixdate","Termin ukończenia naprawy");
        map.put("Tf_details","Szczegóły zlecenia");
        //technical enter
        map.put("Te_date","Termin przeglądu");

        return map;
    }

}