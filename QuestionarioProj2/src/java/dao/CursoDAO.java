
package dao;

import java.util.List;
import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.TypedQuery;
import modelo.Curso;

public class CursoDAO {
    EntityManager em;
    
    public CursoDAO() throws Exception {
        EntityManagerFactory emf;
        emf = Conexao.getConexao();
        em = emf.createEntityManager();
    }
    
    public void incluir(Curso obj) throws Exception {
        try {
            em.getTransaction().begin();
            em.persist(obj);
            em.getTransaction().commit();
        } catch (RuntimeException e) {
            em.getTransaction().rollback();
            throw e;
        } finally {
            em.close();
            
        }
        
    }

    public List<Curso> listar() throws Exception {
        return em.createNamedQuery("Curso.findAll").getResultList();
    }
    
    public List<Curso> listar(String nome) throws Exception {
        //passar o parâmetro pra query
         TypedQuery<Curso> query = 
                 em.createNamedQuery("Curso.findByName", Curso.class);
         
         //Seto o parâmetro
         query.setParameter("nome", '%' + nome + '%');
         //retorno minha lista
         return query.getResultList();
    }
    
    public void alterar(Curso obj) throws Exception {
        
        try {
            em.getTransaction().begin();
            em.merge(obj);
            em.getTransaction().commit();
        } catch (RuntimeException e) {
            em.getTransaction().rollback();
            throw e;
        } finally {
            em.close();
        }
    }
    
    public void excluir(Curso obj) throws Exception {
        
        try {
            em.getTransaction().begin();
            em.remove(obj);
            em.getTransaction().commit();
        } catch (RuntimeException e) {
            em.getTransaction().rollback();
        } finally {
            em.close();
        }
    }
    
    public Curso buscarPorChavePrimaria(Long chave)
    {
        return em.find(Curso.class, chave);
    }

    public void fechaEmf() {
        Conexao.closeConexao();
    }
    

}
