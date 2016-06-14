package modelo;

import javax.annotation.Generated;
import javax.persistence.metamodel.ListAttribute;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;
import modelo.Disciplina;

@Generated(value="EclipseLink-2.5.2.v20140319-rNA", date="2016-06-14T09:05:59")
@StaticMetamodel(Curso.class)
public class Curso_ { 

    public static volatile SingularAttribute<Curso, String> cursoArea;
    public static volatile ListAttribute<Curso, Disciplina> disciplinaList;
    public static volatile SingularAttribute<Curso, Long> idCurso;
    public static volatile SingularAttribute<Curso, String> nome;

}