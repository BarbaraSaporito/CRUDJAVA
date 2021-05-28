package revisaodm2021n.tela.mercadoria;

import java.sql.SQLException;
import java.util.List;
import javax.swing.JOptionPane;
import revisaodm2021n.dados.Mercadoria;
import revisaodm2021n.controles.ControleMercadoria;


public class ManterMercadoria {
    static int id;
    static String nome;
    static String data_compra;
    static String validade;
    static String marca;
    static String id_restaurante;
    static String id_fornecedor;
    
    
static ControleMercadoria controleMercadoria;
    
    public static void Inserir() throws SQLException, ClassNotFoundException {
        nome = JOptionPane.showInputDialog("NOME");
        data_compra = JOptionPane.showInputDialog("DATA COMPRA");
        validade = JOptionPane.showInputDialog("VALIDADE");
        marca = JOptionPane.showInputDialog("MARCA");
        id_restaurante = JOptionPane.showInputDialog("ID RESTAURANTE");
        id_fornecedor = JOptionPane.showInputDialog("ID FORNECEDOR");
        
        Mercadoria mercadoriaEntrada = new Mercadoria(nome, data_compra, validade, marca, id_restaurante, id_fornecedor);
        controleMercadoria = new ControleMercadoria();
        Mercadoria mercadoriaSaida= controleMercadoria.inserir(mercadoriaEntrada);
        JOptionPane.showMessageDialog(null,mercadoriaSaida.toString());
    }
    
    public static void Alterar() throws SQLException, ClassNotFoundException {
        id = Integer.parseInt(JOptionPane.showInputDialog("ID"));
        nome = JOptionPane.showInputDialog("NOME");
        data_compra = JOptionPane.showInputDialog("DATA_COMPRA"); 
        validade = JOptionPane.showInputDialog("VALIDADE");
        marca = JOptionPane.showInputDialog("MARCA");
        id_restaurante = JOptionPane.showInputDialog("ID RESTAURANTE");
        id_fornecedor = JOptionPane.showInputDialog("ID FORNECEDOR");
        
        
        Mercadoria mercadoriaEntrada = new Mercadoria(id, nome, data_compra, validade, marca, id_restaurante, id_fornecedor);
        controleMercadoria = new ControleMercadoria();
        Mercadoria mercadoriaSaida = controleMercadoria.alterar(mercadoriaEntrada);
        JOptionPane.showMessageDialog(null,mercadoriaSaida.toString());
    }

     public static void Listar() throws SQLException, ClassNotFoundException {
        nome = JOptionPane.showInputDialog("NOME");
        Mercadoria mercadoriaEntrada = new Mercadoria(nome);
        controleMercadoria = new ControleMercadoria();
        List<Mercadoria> listamercadoriaSaida = controleMercadoria.listar(mercadoriaEntrada);
        listamercadoriaSaida.forEach((mercadoriaL) -> {
            JOptionPane.showMessageDialog(null,mercadoriaL.toString());
        });
    }
    

    public static void Buscar() throws SQLException, ClassNotFoundException {
        id = Integer.parseInt(JOptionPane.showInputDialog("ID"));
        Mercadoria mercadoriaEntrada = new Mercadoria(id);
        controleMercadoria = new ControleMercadoria();
        Mercadoria mercadoriaSaida = controleMercadoria.buscar(mercadoriaEntrada);
        JOptionPane.showMessageDialog(null,mercadoriaSaida.toString());
    }

    public static void Excluir() throws SQLException, ClassNotFoundException {
        id = Integer.parseInt(JOptionPane.showInputDialog("ID"));
        Mercadoria mercadoriaEntrada = new Mercadoria(id);
        controleMercadoria = new ControleMercadoria();
        Mercadoria mercadoriaSaida = controleMercadoria.excluir(mercadoriaEntrada);
        JOptionPane.showMessageDialog(null,mercadoriaSaida.toString());
    }

}
