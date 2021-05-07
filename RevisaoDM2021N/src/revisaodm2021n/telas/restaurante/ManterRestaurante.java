package revisaodm2021n.telas.restaurante;

import java.sql.SQLException;
import java.util.List;
import javax.swing.JOptionPane;
import revisaodm2021n.dados.Restaurante;
import revisaodm2021n.controles.ControleRestaurante;


public class ManterRestaurante {
    static int id;
    static String nome;
    static String cep;
    static String endereco;
    static String bairro;
    static String telefone;
    
static ControleRestaurante controleRestaurante;
    
    public static void Inserir() throws SQLException, ClassNotFoundException {
        nome = JOptionPane.showInputDialog("NOME");
        cep = JOptionPane.showInputDialog("CEP"); 
        endereco = JOptionPane.showInputDialog("ENDEREÇO");
        bairro = JOptionPane.showInputDialog("BAIRRO");
        telefone = JOptionPane.showInputDialog("TELEFONE");
        
        Restaurante resEntrada = new Restaurante(nome, cep, endereco, bairro, telefone);
        controleRestaurante = new ControleRestaurante();
        Restaurante rSaida= controleRestaurante.inserir(resEntrada);
        JOptionPane.showMessageDialog(null,rSaida.toString());
    }
    
    public static void Alterar() throws SQLException, ClassNotFoundException {
        id = Integer.parseInt(JOptionPane.showInputDialog("ID"));
        nome = JOptionPane.showInputDialog("NOME");
        cep = JOptionPane.showInputDialog("CEP"); 
        endereco = JOptionPane.showInputDialog("ENDEREÇO");
        bairro = JOptionPane.showInputDialog("BAIRRO");
        telefone = JOptionPane.showInputDialog("TELEFONE");
        
        Restaurante resEntrada = new Restaurante(id, nome, cep, endereco, bairro, telefone);
        controleRestaurante = new ControleRestaurante();
        Restaurante rSaida = controleRestaurante.alterar(resEntrada);
        JOptionPane.showMessageDialog(null,rSaida.toString());
    }

     public static void Listar() throws SQLException, ClassNotFoundException {
        nome = JOptionPane.showInputDialog("NOME");
        Restaurante rEntrada = new Restaurante(nome);
        controleRestaurante = new ControleRestaurante();
        List<Restaurante> listarestauranteSaida = controleRestaurante.listar(rEntrada);
        listarestauranteSaida.forEach((resL) -> {
            JOptionPane.showMessageDialog(null,resL.toString());
        });
    }
    

    public static void Buscar() throws SQLException, ClassNotFoundException {
        id = Integer.parseInt(JOptionPane.showInputDialog("ID"));
        Restaurante resEntrada = new Restaurante(id);
        controleRestaurante = new ControleRestaurante();
        Restaurante rSaida = controleRestaurante.buscar(resEntrada);
        JOptionPane.showMessageDialog(null,rSaida.toString());
    }

    public static void Excluir() throws SQLException, ClassNotFoundException {
        id = Integer.parseInt(JOptionPane.showInputDialog("ID"));
        Restaurante rEntrada = new Restaurante(id);
        controleRestaurante = new ControleRestaurante();
        Restaurante rSaida = controleRestaurante.excluir(rEntrada);
        JOptionPane.showMessageDialog(null,rSaida.toString());
    }

}
