package org.example;
import static org.junit.jupiter.api.Assumptions.*;
import org.junit.jupiter.api.Test;
import static org.junit.jupiter.api.Assertions.*;
import org.junit.jupiter.api.DisplayName;
import java.time.LocalDateTime;

public class suposiciones {
    @Test
    void testAssumeTrue() {
        boolean b = 'A' == 'A';
        assumeTrue(b);
        assertEquals("Hello", "Hello");
    }
    @Test
    @DisplayName("test executes only on Saturday")
    public void testAssumeTrueSaturday() {
        LocalDateTime dt = LocalDateTime.now();
        assumeTrue(dt.getDayOfWeek().getValue() == 6);
        System.out.println("further code will execute only if above assumption holds true");
    }
    @Test
    void testAssumeFalse() {
        boolean b = 'A' != 'A';
        assumeFalse(b);
        assertEquals("Hello", "Hello");
    }
    @Test
    void testAssumeFalseEnvProp() {
        System.setProperty("env", "prod");
        assumeFalse("dev".equals(System.getProperty("env")));
        System.out.println("El código adicional se ejecutará solo si se cumple la suposición anterior.");
    }
    @Test
    void testAssumingThat() {
        System.setProperty("env", "test");
        assumingThat("test".equals(System.getProperty("env")),
                () -> {
                    assertEquals(10, 10);
                    System.out.println("Realizar las siguientes afirmaciones solo en el entorno de prueba.");
                });

        assertEquals(20, 20);
        System.out.println("Realizar las siguientes afirmaciones en todos los entornos.");
    }
}
