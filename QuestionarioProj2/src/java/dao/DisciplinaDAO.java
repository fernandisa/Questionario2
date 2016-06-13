
package dao;

import java.util.List;
import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.TypedQuery;
import modelo.Disciplina;

public class DisciplinaDAO {
    EntityManager em;
    
    public DisciplinaDAO() throws Exception {
        EntityManagerFactory emf;
        emf = Conexao.getConexao();
        em = emf.createEntityManager();
    }
    
    public void incluir(Disciplina obj) throws Exception {
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

    public List<Disciplina> listar() throws Exception {
        return em.createNamedQuery("Disciplina.findAll").getResultList();
    }
    
    public List<Disciplina> listar(String disc_nome) throws Exception {
        //passar o parâmetro pra query
         TypedQuery<Disciplina> query = 
                 em.createNamedQuery("Disciplina.findByName", Disciplina.class);
         
         //Seto o parâmetro
         query.setParameter("disc_nome", '%' + disc_nome + '%');
         //retorno minha lista
         return query.getResultList();
    }
    
    public void alterar(Disciplina obj) throws Exception {
        
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
    
    public void excluir(Disciplina obj) throws Exception {
        
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
    
    public Disciplina buscarPorChavePrimaria(Long chave)
    {
        return em.find(Disciplina.class, chave);
    }

    public void fechaEmf() {
        Conexao.closeConexao();
    }
    

}
