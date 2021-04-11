package jay;

import java.util.List;

import org.mybatis.spring.support.SqlSessionDaoSupport;
import org.springframework.dao.DataAccessException;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Repository;

// SqlSessionDaoSupport => getSqlSession() 상속 => SqlSession
public class SqlMapCafeDao extends SqlSessionDaoSupport implements CafeDAO {

	@Override
	public Cafe list(String id) throws DataAccessException {
		return getSqlSession().selectOne("list", id);
	}

	@Override
	public void register(Mem mem) throws DataAccessException {
		getSqlSession().selectOne("register", mem);
	}

	@Override
	public void reservate(Reservation reservation) throws DataAccessException {
		getSqlSession().selectOne("reservate", reservation);
	}

	@Override
	public List<Cafe> lookcafe() throws DataAccessException {
		// TODO Auto-generated method stub
		return getSqlSession().selectList("lookcafe");
	}


	
	
}
