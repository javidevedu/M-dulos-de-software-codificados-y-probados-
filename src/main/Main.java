package main;

import dao.UsuarioDAO;
import model.Usuario;

public class Main {

    public static void main(String[] args) {

        UsuarioDAO dao = new UsuarioDAO();

        // 1. Insertar
        System.out.println("Insertando usuario...");
        dao.insertar(new Usuario(0, "Javier Castillo", "javier@email.com"));

        // 2. Listar
        System.out.println("\nLista de usuarios:");
        dao.listar().forEach(u ->
                System.out.println(u.getId() + " - " + u.getNombre() + " - " + u.getCorreo())
        );

       