package modelo;

import javax.annotation.Generated;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;
import modelo.Curso;
import modelo.Monitor;
import modelo.Professor;

@Generated(value="EclipseLink-2.5.2.v20140319-rNA", date="2016-06-20T15:40:38")
@StaticMetamodel(Disciplina.class)
public class Disciplina_ { 

    public static volatile SingularAttribute<Disciplina, String> area;
    public static volatile SingularAttribute<Disciplina, Long> idDisciplina;
    public static volatile SingularAttribute<Disciplina, String> discNome;
    public static volatile SingularAttribute<Disciplina, Curso> idCurso;
    public static volatile SingularAttribute<Disciplina, Professor> idProfessor;
    public static volatile SingularAttribute<Disciplina, Monitor> idMonitor;

}