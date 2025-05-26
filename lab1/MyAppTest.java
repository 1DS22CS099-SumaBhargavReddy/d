package com.dsce;
import org.testng.Assert;
import org.testng.annotations.Test;
import com.dsce.MyApp;
public class MyAppTest {
      @Test
      public void testLoginSuccess()
      {
    	  MyApp myapp=new MyApp();
    	  Assert.assertEquals(myapp.userlogin("nithin", "Nithin@12345"),1);
      }
      @Test
      public void testLoginFail()
      {
    	  MyApp myapp=new MyApp();
    	  Assert.assertEquals(myapp.userlogin("nithin", "Nithin@"),0);
      }
}
