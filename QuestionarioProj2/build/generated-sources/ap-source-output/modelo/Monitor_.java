package modelo;

import javax.annotation.Generated;
import javax.persistence.metamodel.ListAttribute;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;
import modelo.Disciplina;
import modelo.MoniAval;

@Generated(value="EclipseLink-2.5.2.v20140319-rNA", date="2016-06-14T07:36:07")
@StaticMetamodel(Monitor.class)
public class Monitor_ { 

    public static volatile SingularAttribute<Monitor, String> monNome;
    public static volatile SingularAttribute<Monitor, String> monPeriodo;
    public static volatile ListAttribute<Monitor, Disciplina> disciplinaList;
    public static volatile SingularAttribute<Monitor, Long> idMonitor;
    public static volatile ListAttribute<Monitor, MoniAval> moniAvalList;

}