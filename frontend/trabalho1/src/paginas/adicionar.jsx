import { useNavigate } from "react-router-dom";

function Adicionar() {
  const navigate = useNavigate();

  function adicionarVeiculos() {
    const nome = document.getElementById("nome").value;
    const tipo = document.getElementById("tipo").value;
    const cor = document.getElementById("cor").value;
    const vrm = document.getElementById("vrm").value;
    const vin = document.getElementById("vin").value;

    if (!nome || !tipo || !cor || !vrm || !vin) {
        alert("Todos os campos são obrigatórios!");
        return;
    }

    if (vrm.length !== 7) {
        alert("O campo VRM deve conter exatamente 7 caracteres!");
        return;
    }

    if (vin.length !== 17) {
        alert("O campo VIN deve conter exatamente 17 caracteres!");
        return;
    }

    const json = `{
      "nome": "${nome}", 
      "tipo": "${tipo}",
      "cor": "${cor}",
      "vrm": "${vrm}",
      "vin": "${vin}"
    }`;
    fetch("http://localhost:8800/adicionar", {
      method: "POST",
      headers: {
        "Content-Type": "application/json",
      },
      body: json
    })
    .then(() => {
    navigate("/crud");
    });
  }

  return (
    <div className="adicionar">
        <h1 className="title">Adicionar Veiculos</h1>
        <ul className="list">
            <li className="li-list-crud">
                <p>Nome: <input className="input-crud" id="nome" placeholder="Nome"></input></p>
                <p>Tipo: <input className="input-crud" id="tipo" placeholder="Tipo"></input></p>
                <p>Cor: <input className="input-crud" id="cor" placeholder="Cor"></input></p>
                <p>VRM: <input className="input-crud" id="vrm" placeholder="VRM"></input></p>
                <p>VIN: <input className="input-crud" id="vin" placeholder="VIN"></input></p>
                <button className="botao-enviar" onClick={() => adicionarVeiculos()}>Enviar</button>
            </li>
        </ul>
    </div>
  );
};

export default Adicionar;