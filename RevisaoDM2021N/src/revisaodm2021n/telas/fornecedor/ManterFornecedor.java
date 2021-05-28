package revisaodm2021n.telas.fornecedor;

import java.sql.SQLException;
import java.util.List;
import javax.swing.JOptionPane;
import revisaodm2021n.dados.Fornecedor;
import revisaodm2021n.controles.ControleFornecedor;


public class ManterFornecedor {
    static int id;
    static String nome;
    static String cep;
    static String endereco;
    static String bairro;
    static String telefone;
    
static ControleFornecedor controleFornecedor;
    
    public static void Inserir() throws SQLException, ClassNotFoundException {
        nome = JOptionPane.showInputDialog("NOME");
        cep = JOptionPane.showInputDialog("CEP"); 
        endereco = JOptionPane.showInputDialog("ENDEREÇO");
        bairro = JOptionPane.showInputDialog("BAIRRO");
        telefone = JOptionPane.showInputDialog("TELEFONE");
        
        Fornecedor fornecedorEntrada = new Fornecedor(nome, cep, endereco, bairro, telefone);
        controleFornecedor = new ControleFornecedor();
        Fornecedor fornecedorSaida= controleFornecedor.inserir(fornecedorEntrada);
        JOptionPane.showMessageDialog(null,fornecedorSaida.toString());
    }
    
    public static void Alterar() throws SQLException, ClassNotFoundException {
        id = Integer.parseInt(JOptionPane.showInputDialog("ID"));
        nome = JOptionPane.showInputDialog("NOME");
        cep = JOptionPane.showInputDialog("CEP"); 
        endereco = JOptionPane.showInputDialog("ENDEREÇO");
        bairro = JOptionPane.showInputDialog("BAIRRO");
        telefone = JOptionPane.showInputDialog("TELEFONE");
        
        Fornecedor fornecedorEntrada = new Fornecedor(id, nome, cep, endereco, bairro, telefone);
        controleFornecedor = new ControleFornecedor();
        Fornecedor fornecedorSaida = controleFornecedor.alterar(fornecedorEntrada);
        JOptionPane.showMessageDialog(null,fornecedorSaida.toString());
    }

     public static void Listar() throws SQLException, ClassNotFoundException {
        nome = JOptionPane.showInputDialog("NOME");
        Fornecedor fornecedorEntrada = new Fornecedor(nome);
        controleFornecedor = new ControleFornecedor();
        List<Fornecedor> listafornecedorSaida = controleFornecedor.listar(fornecedorEntrada);
        listafornecedorSaida.forEach((fornecedorL) -> {
            JOptionPane.showMessageDialog(null,fornecedorL.toString());
        });
    }
    

    public static void Buscar() throws SQLException, ClassNotFoundException {
        id = Integer.parseInt(JOptionPane.showInputDialog("ID"));
        Fornecedor fornecedorEntrada = new Fornecedor(id);
        controleFornecedor = new ControleFornecedor();
        Fornecedor fornecedorSaida = controleFornecedor.buscar(fornecedorEntrada);
        JOptionPane.showMessageDialog(null,fornecedorSaida.toString());
    }

    public static void Excluir() throws SQLException, ClassNotFoundException {
        id = Integer.parseInt(JOptionPane.showInputDialog("ID"));
        Fornecedor fornecedorEntrada = new Fornecedor(id);
        controleFornecedor = new ControleFornecedor();
        Fornecedor fornecedorSaida = controleFornecedor.excluir(fornecedorEntrada);
        JOptionPane.showMessageDialog(null,fornecedorSaida.toString());
    }

}
