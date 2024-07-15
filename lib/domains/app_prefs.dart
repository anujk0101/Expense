import 'package:shared_preferences/shared_preferences.dart';

class AppPrefs{
  SharedPreferences? prefs;
  static const String USER_ID_KEY="user_id";

 Future<void> initPrefs() async{
    prefs =await SharedPreferences.getInstance();
  }

  ////=> prefs!.getInt(USER_ID_KEY) ?? 0;
  int getUserId()
  {
    try{
    int? val =prefs!.getInt(USER_ID_KEY);
    if(val==null)
      {
        return 0;
      }
    else
      {
        return val;
      }
    }
        catch(e){
      return 9;
        }
  }

  setUserId(int id){
   try{
  prefs!.setInt(USER_ID_KEY, id);}
       catch(e)
   {
     print('hllo');
   }
}

}