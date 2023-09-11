package org.example;
import org.junit.jupiter.api.Test;
import static org.junit.jupiter.api.Assertions.*;
public class aserciones {

    @Test
    void testasertequals(){
        assertEquals("ABC","ABC");
        assertEquals(20,20,"mensaje opcional ");
        assertEquals(2+2,4);
    }
    @Test
    void testasertFalse(){
        assertFalse("FirstName".length()==10);
        assertFalse(2>3,"mensaje de asercion opcional");
    }
    @Test
    void testasertNull(){
        String str1 =null;
        String str2 ="hola";
        assertNull(str1);
        assertNotNull(str2);
    }
    @Test
    void testasertAll(){
        String str1 ="hola";
        String str2 ="esto es";
        String str3 ="una asercion";
        assertAll(
                ()-> assertEquals(str1,"hola"),
                ()-> assertEquals(str2,"esto es"),
                ()-> assertEquals(str3,"una asercion")

        );
        /*
        assertAll(
                ()-> assertEquals(str1,"hola"),
                ()-> assertEquals(str2,"esto no es"),
                ()-> assertEquals(str3,"una asercion")
        );*/
    }
    @Test
    void testasertTrue() {
        assertTrue("FirstName".startsWith("F"));
    }
    @Test
    void testassrtthrows(){
        IllegalArgumentException exception = assertThrows(IllegalArgumentException.class,()->{
            throw new IllegalArgumentException("ha ocurrido una excepcion por argumento ilegal");
        });
        assertEquals("ha ocurrido una excepcion por argumento ilegal",exception.getMessage());
    }

}
