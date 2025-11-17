package com.cidadania.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import com.cidadania.model.dao.UsuarioDao;
import com.cidadania.model.dao.impl.UsuarioDaoJDBC;
import com.cidadania.model.entities.Usuario;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class AdicionaUsuario
 */
@WebServlet("/AdicionaUsuario")
public class AdicionaUsuario extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AdicionaUsuario() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PrintWriter out = response.getWriter();
		Usuario usuario = new Usuario();
		
		// Pegando parametros do request
		String nome = request.getParameter("txtNome");
		usuario.setNome(nome);
		
		String email = request.getParameter("txtEmail");
		usuario.setEmail(email);
		
		String senha = request.getParameter("txtSenha");
		usuario.setSenha(senha);

		
//		UsuarioDao dao =  DaoFactory.criarUsuarioDao();
		UsuarioDao dao = new UsuarioDaoJDBC();
		dao.inserir(usuario);
		
		//imprimir o nome
		out.println("<html>");
			out.println("<body>");
				out.println("Usuario: "+usuario.getNome()+" adicionado com sucesso!!");
			out.println("</body>");
		out.println("</html>");
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
