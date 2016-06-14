package modelo;

import javax.annotation.Generated;
import javax.persistence.metamodel.ListAttribute;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;
import modelo.Disciplina;
import modelo.ProfAval;

@Generated(value="EclipseLink-2.5.2.v20140319-rNA", date="2016-06-13T20:40:13")
@StaticMetamodel(Professor.class)
public class Professor_ { 

    public static volatile ListAttribute<Professor, ProfAval> profAvalList;
    public static volatile SingularAttribute<Professor, String> profNome;
    public static volatile ListAttribute<Professor, Disciplina> disciplinaList;
    public static volatile SingularAttribute<Professor, Long> idProfessor;
    public static volatile SingularAttribute<Professor, String> profPeriodo;

}