/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import java.util.List;
import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.TypedQuery;
import modelo.Questionario;

/**
 *
 * @author ferna
 */
public class QuestionarioDAO {
    EntityManager em;
    
    public QuestionarioDAO() throws Exception {
        EntityManagerFactory emf;
        emf = Conexao.getConexao();
        em = emf.createEntityManager();
    }
    
    public void incluir(Questionario obj) throws Exception {
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

    public List<Questionario> listar() throws Exception {
        return em.createNamedQuery("Questionario.findAll").getResultList();
    }
    
    public List<Questionario> listar(String id_questionario) throws Exception {
        //passar o parâmetro pra query
         TypedQuery<Questionario> query = 
                 em.createNamedQuery("Questionario.findById", Questionario.class);
         
         //Seto o parâmetro
         query.setParameter("id_questionario", '%' + id_questionario + '%');
         //retorno minha lista
         return query.getResultList();
    }
    
    public void alterar(Questionario obj) throws Exception {
        
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
    
    public void excluir(Questionario obj) throws Exception {
        
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
    
    public Questionario buscarPorChavePrimaria(Long chave)
    {
        return em.find(Questionario.class, chave);
    }

    public void fechaEmf() {
        Conexao.closeConexao();
    }
    

}
