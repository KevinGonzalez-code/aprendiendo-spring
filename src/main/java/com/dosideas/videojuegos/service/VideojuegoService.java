package com.dosideas.videojuegos.service;

import com.dosideas.videojuegos.domain.Videojuego;
import org.springframework.stereotype.Service;
import java.util.ArrayList;
import java.util.List;

@Service //Clase de negocio en Spring ( Modelo )
public class VideojuegoService {

    public List<Videojuego> buscarDestacados(){
        List<Videojuego> destacados = new ArrayList<>();

        Videojuego juego = new Videojuego();
        juego.setNombre("GTA5");
        juego.setDescripcion("Es un juego de acción");
        juego.setImagenUrl("https://images.gnwcdn.com/2013/articles//a/1/6/1/2/8/6/2/eurogamer-w8khik.jpg/EG11/resize/1200x-1/eurogamer-w8khik.jpg");
        destacados.add(juego);

        juego = new Videojuego();
        juego.setNombre("GTA5");
        juego.setDescripcion("Es un juego de acción");
        juego.setImagenUrl("https://images.gnwcdn.com/2013/articles//a/1/6/1/2/8/6/2/eurogamer-w8khik.jpg/EG11/resize/1200x-1/eurogamer-w8khik.jpg");
        destacados.add(juego);

        juego = new Videojuego();
        juego.setNombre("GTA5");
        juego.setDescripcion("Es un juego de acción");
        juego.setImagenUrl("https://images.gnwcdn.com/2013/articles//a/1/6/1/2/8/6/2/eurogamer-w8khik.jpg/EG11/resize/1200x-1/eurogamer-w8khik.jpg");
        destacados.add(juego);

        juego = new Videojuego();
        juego.setNombre("GTA5");
        juego.setDescripcion("Es un juego de acción");
        juego.setImagenUrl("https://images.gnwcdn.com/2013/articles//a/1/6/1/2/8/6/2/eurogamer-w8khik.jpg/EG11/resize/1200x-1/eurogamer-w8khik.jpg");
        destacados.add(juego);

        return destacados;
    }

}
