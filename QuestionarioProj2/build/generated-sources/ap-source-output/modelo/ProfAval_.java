package modelo;

import java.math.BigInteger;
import javax.annotation.Generated;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;
import modelo.Professor;
import modelo.Questionario;

@Generated(value="EclipseLink-2.5.2.v20140319-rNA", date="2016-06-14T06:35:36")
@StaticMetamodel(ProfAval.class)
public class ProfAval_ { 

    public static volatile SingularAttribute<ProfAval, Long> idProfaval;
    public static volatile SingularAttribute<ProfAval, BigInteger> paResposta3;
    public static volatile SingularAttribute<ProfAval, BigInteger> paResposta2;
    public static volatile SingularAttribute<ProfAval, BigInteger> paResposta5;
    public static volatile SingularAttribute<ProfAval, BigInteger> paResposta4;
    public static volatile SingularAttribute<ProfAval, BigInteger> paResposta7;
    public static volatile SingularAttribute<ProfAval, BigInteger> paResposta6;
    public static volatile SingularAttribute<ProfAval, BigInteger> paResposta9;
    public static volatile SingularAttribute<ProfAval, BigInteger> paResposta8;
    public static volatile SingularAttribute<ProfAval, BigInteger> paResposta10;
    public static volatile SingularAttribute<ProfAval, Questionario> idQuestionario;
    public static volatile SingularAttribute<ProfAval, Professor> idProfessor;
    public static volatile SingularAttribute<ProfAval, String> paPeriodo;
    public static volatile SingularAttribute<ProfAval, BigInteger> paResposta1;

}