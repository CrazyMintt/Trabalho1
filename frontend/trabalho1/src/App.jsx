import "./App.css"; // Importa os estilos da aplicação
import ContextProvider from "./components/contextProvider";
import DataList from "./components/DataList";
import Adicionar from "./paginas/adicionar";
import Crud from "./paginas/crud";
import Detalhada from "./paginas/detalhada";
import Editar from "./paginas/editar";
import { BrowserRouter as Router, Routes, Route, Link } from "react-router-dom"

function App() {
  return (
    <ContextProvider>
      <div>
          <Router>
              <header className="header">
                  <Link className="header-inicial" to="/">Pagina inicial</Link>
                  <Link to="/crud">CRUD</Link>
              </header>
              <Routes>
                  <Route path="/" element={<DataList/>}></Route>
                  <Route path="/crud" element={<Crud/>}></Route>
                  <Route path="/detalhada" element={<Detalhada/>}></Route>
                  <Route path="/crud/editar" element={<Editar/>}></Route>
                  <Route path="/crud/adicionar" element={<Adicionar/>}></Route>
              </Routes>
              <footer>
                Bruno Himovski Opuszka Machado Dutra
              </footer>
          </Router>
      </div>
    </ContextProvider>
  );
}

export default App;