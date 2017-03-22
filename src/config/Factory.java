package config;

import java.io.Reader;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;
 
public class Factory {
    private static SqlSession sqlSession;
 
    static {        
        try {
            Reader reader = Resources.getResourceAsReader("database/SqlMapConfig.xml");
            SqlSessionFactory sqlSessionFactory = new SqlSessionFactoryBuilder().build(reader);
            sqlSession = sqlSessionFactory.openSession(true); // true : 오토커밋
            reader.close();
        } catch (Exception e) {
            e.printStackTrace();
        }        
    }
    
    public static <T>T getMapper(Class<T> arg){        
        return sqlSession.getMapper(arg);
    }
}
