import React, { useContext, useEffect, useState } from "react";
import { CarroContext } from "../components/carroContext";

function Detalhada() {
    const {carro, setCarro} = useContext(CarroContext);
    const [carregando, setCarregando] = useState(true);

    // Carrega o valor de carro salvo
    useEffect(() => {
      const savedCarro = localStorage.getItem("carro");
      if (savedCarro) {
        setCarro(JSON.parse(savedCarro));
      }
      setCarregando(false);
    }, [setCarro]);

    // Salva o valor de carro quando o estado é alterado
    useEffect(() => {
      if (carro) {
        localStorage.setItem("carro", JSON.stringify(carro));
      }
    }, [carro]);

    if (carregando) {
      return
    }    

    return (
        <div className="detalhada">
            <h1 className="title">Visualização detalhada</h1>
            <ul className="list">
              <li className="li-list-detalhada">
                <p><strong>Nome:</strong> {carro.nome}</p>
                <p><strong>Tipo:</strong> {carro.tipo}</p>
                <p><strong>Cor:</strong> {carro.cor}</p>
                <p><strong>VRM:</strong> {carro.vrm}</p>
                <p><strong>VIN:</strong> {carro.vin}</p>
              </li>
            </ul>
        </div>
      );
}

export default Detalhada;