package org.example;

import org.junit.jupiter.api.AfterAll;
import org.junit.jupiter.api.AfterEach;
import org.junit.jupiter.api.BeforeAll;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Disabled;
import org.junit.jupiter.api.DisplayName;
import org.junit.jupiter.api.Test;
public class anotaciones {
    @BeforeAll
    static void Beforeall() {
        System.out.println("**--- Ejecutado una vez antes de todos los métodos de prueba en esta clase ---**");
    }
    @BeforeEach
    void Beforeeach() {
        System.out.println("**--- Ejecutado antes de cada método de prueba en esta clase ---**");
    }
    @Test
    void testmethod1() {
        System.out.println("**--- Método de prueba 1 ejecutado ---**");
    }
    @DisplayName("Prueba método 2 con condición")
    @Test
    void testmethod2() {
        System.out.println("**--- Método de prueba 2 ejecutado ---**");
    }
    @Test
    @Disabled("implementación pendiente")
    void testmethod3() {
        System.out.println("**--- Método de prueba 3 ejecutado ---**");
    }
    @AfterEach
    void Aftereach() {
        System.out.println("**--- Ejecutado después de cada método de prueba en esta clase ---**");
    }
    @AfterAll
    static void Afterall() {
        System.out.println("**--- Ejecutado una vez después de todos los métodos de prueba en esta clase ---**");
    }
}








