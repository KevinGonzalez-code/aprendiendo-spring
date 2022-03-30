package com.dosideas.videojuegos.repository;
import com.dosideas.videojuegos.domain.Videojuego;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import java.util.List;

public interface VideojuegoRepository extends JpaRepository<Videojuego, Integer> {

        @Query("SELECT v FROM Videojuego v ORDER BY v.nombre")
        List<Videojuego> buscarTodos();

        @Query("SELECT v FROM Videojuego v WHERE v.distribuidor.id=?1 ORDER BY v.nombre")
        List<Videojuego> buscarPorDistribuidor(int distribuidorId);

        @Query("FROM Videojuego v WHERE v.nombre LIKE %?1%")
        List<Videojuego> buscar(String consulta);
}


