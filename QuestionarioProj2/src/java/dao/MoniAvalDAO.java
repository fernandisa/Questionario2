
package dao;

import java.util.List;
import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.TypedQuery;
import modelo.MoniAval;

public class MoniAvalDAO {
    EntityManager em;
    
    public MoniAvalDAO() throws Exception {
        EntityManagerFactory emf;
        emf = Conexao.getConexao();
        em = emf.createEntityManager();
    }
    
    public void incluir(MoniAval obj) throws Exception {
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

    public List<MoniAval> listar() throws Exception {
        return em.createNamedQuery("MoniAval.findAll").getResultList();
    }
    
    public List<MoniAval> listar(String idMonitor) throws Exception {
        TypedQuery<MoniAval> query =
                em.createNamedQuery("MoniAval.findById", MoniAval.class);
        
        query.setParameter("idMonitor", '%' + idMonitor +'%');
        return query.getResultList();
    } 
    
    public void alterar(MoniAval obj) throws Exception {
        
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
    
    public void excluir(MoniAval obj) throws Exception {
        
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
    
    public MoniAval buscarPorChavePrimaria(Long chave)
    {
        return em.find(MoniAval.class, chave);
    }

    public void fechaEmf() {
        Conexao.closeConexao();
    }
    

}
