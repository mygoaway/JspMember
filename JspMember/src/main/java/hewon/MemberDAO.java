package hewon;


import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import java.util.ArrayList;
import java.util.List;

public class MemberDAO {//DBConnectionMgr�� ��ü �ʿ�->has a ����(1)

	//1.�����ų Ŭ������ ��ü�� ��������� ����
	private DBConnectionMgr pool=null;//getConnection,freeConnection �ʿ�
	
	//2.�������� ������ �ʿ���ϴ� ��ü�� ��������� ����(DB������ �ʿ�)
	private Connection con=null;
	private PreparedStatement pstmt=null;//sql����
	private ResultSet rs=null;//select �˻�=>���̺�����
	private String sql="";//�����ų SQL���� ����
	
	
	//2.�����ڸ� ���ؼ� ��ü�� ������ ������ �ۼ�->has a ����(2)
	public MemberDAO() {
		try {
			pool=DBConnectionMgr.getInstance();//DB����->�⺻���� ���
			System.out.println("pool=>"+pool);
		}catch(Exception e) {
			System.out.println("DB���� ����=>"+e);
		}
	}
	
	//3.�䱸�м��� ���� �޼��带 �ۼ�->ȸ���α���->�Ű����� O ��ȯ�� O
	//SQL���忡�� select=>��ȯ�� O where ���ǽ�->�Ű����� 2��
	//select id,passwd from member where id='nup' and passwd='1234';
	//1.LoginProcess.jsp���� ȣ��
	public boolean loginCheck(String id,String passwd) {
		//1.DB����
		boolean check=false;
		//2.SQL���� ����
		try {
			con=pool.getConnection();//������� Connection ��ȯ
			System.out.println("con=>"+con);//null
			sql="select id,passwd from member where id=? and passwd=?";
			pstmt=con.prepareStatement(sql);
			pstmt.setString(1, id);//id���� ���󿡼� �Է¹��� ��
			pstmt.setString(2, passwd);
			rs=pstmt.executeQuery();
			check=rs.next();//�����Ͱ� ����=>true or ������ false
		}catch(Exception e) {
			System.out.println("loginCheck() ���࿡������=>"+e);
		}finally { //3.DB������������
			//if(rs!=null) rs.close()~
			pool.freeConnection(con, pstmt, rs);
		}
	  return check;
	}
	//2.�ߺ� id�� üũ
	//select id from member where id='kkk';
	public boolean checkId(String id) { //IdCheck.jsp ȣ��
		boolean check=false;//�ߺ�id�� üũ
		//1.DB����
		try {
		//2.SQL����
			con=pool.getConnection();//10��
			sql="select id from member where id=?";  //1)SQL���� ���� Ȯ��
			pstmt=con.prepareStatement(sql);           //2)NullPointerException
			pstmt.setString(1, id);                           //3)parameterIndex ����
			rs=pstmt.executeQuery();
			check=rs.next();//������ ���� true or ������ false
		}catch(Exception e) {
			System.out.println("checkId()�޼��� �������=>"+e);
		}finally {
		//3.DB��������
			pool.freeConnection(con, pstmt, rs);
		}
		return check;//IdCheck.jsp
	}
	
	//3.�����ȣ �˻�->ZipCheck.jsp=>zipcodeRead�޼��� ȣ��
	// ��ǰ�˻�,ȸ���˻�=>���̺�,�ʵ常 ����
	//select area1 from zipcode where area3 like '%�̾�2��%';=>��ȯ�� String or Integer~
	//select zipcode,area1 from zipcode where area3 like '%�̾�2��%';=>��ȯ��=>DTO��
	//select * from zipcode where area3 like '%�̾�2��%';//���ڵ尡 ������=>�÷��ǰ�ü
	//public String zipcodeRead(String area3)
	//public ZipcodeDTO zipcodeRead(String area3)
	public ArrayList<ZipcodeDTO> zipcodeRead(String area3){
		//���ڵ� �Ѱ��̻� ���� ����(��ü)����->�ʵ庰�� ����� DTO������ ����
		ArrayList<ZipcodeDTO> zipList=new ArrayList();
		
		try {
			con=pool.getConnection();
			//select * from zipcode where area3 like '�̾�2��%';
			sql="select * from zipcode where area3 like '"+area3+"%'";
			System.out.println("zipcodeRead�� sql=>"+sql);
			pstmt=con.prepareStatement(sql);
			rs=pstmt.executeQuery();
			//�˻��� ���ڵ��� ���� �ʵ庰�� ��� �ҽ�->ã�� ���ڵ尡 1��->if(rs.next())
			//�Ѱ��̻�==>while(rs.next())=>��Ȯ�� ������ �𸦶� ���
			while(rs.next()) {
				ZipcodeDTO tempZipcode=new ZipcodeDTO();
				tempZipcode.setZipcode(rs.getString("zipcode"));//ã������ Setter�޼��� ������ ����
				tempZipcode.setArea1(rs.getString("area1"));//"�����"
				tempZipcode.setArea2(rs.getString("area2"));
				tempZipcode.setArea3(rs.getString("area3"));
				tempZipcode.setArea4(rs.getString("area4"));
				//ArrayList�� ��� ������ ��� ����
				zipList.add(tempZipcode);
			}
		}catch(Exception e) {
			System.out.println("zipcodeRead()��������=>"+e);
		}finally {
			pool.freeConnection(con, pstmt, rs);
		}
		return zipList;//14���� ���ڵ�=>ZipCheck.jsp���� ���
	}
	
	//ȸ������,ȸ������,ȸ��Ż��
	//4.ȸ������->insert into member values(?,?,?,,,,);->executeUpdate()
	//sql������ ����� ������ �Ǵ� �� Ȯ��->��ȯ���� ���(1 or 0) =>int =>boolean
	public boolean memberInsert(MemberDTO mem) { //(String mem_id,String,,,,8��)
	      boolean check=false;//ȸ������ ��������                //setScan(Scanner sc)
	      
	      try {
	    	  con=pool.getConnection();
	    	  System.out.println("memberInsert�޼����� con=>"+con);
	    	  //Ʈ�����->����Ŭ�� �ʼ�(��뷮)->������ġ(rollback)
	    	  con.setAutoCommit(false);//default->
	    	  //commit()�� ����ؾ� ���������� ������ �����Ű�ڴ�.
	    	  sql="insert into member values(?,?,?,?,?,?,?,?)";
	    	  pstmt=con.prepareStatement(sql);
	    	  System.out.println("pstmt=>"+pstmt);
	    	  System.out.println("mem.getMem_id()=>"+mem.getMem_id());//null
	    	  pstmt.setString(1, mem.getMem_id());//~.getMem_name())
	    	  pstmt.setString(2, mem.getMem_passwd());
	    	  pstmt.setString(3, mem.getMem_name());
	    	  pstmt.setString(4, mem.getMem_email());
	    	  pstmt.setString(5, mem.getMem_phone());
	    	  pstmt.setString(6, mem.getMem_zipcode());
	    	  pstmt.setString(7, mem.getMem_address());
	    	  pstmt.setString(8, mem.getMem_job());//~getMem_name())
	    	  int insert=pstmt.executeUpdate();//��ȯ 1(����), 0 (����)
	    	  System.out.println("insert(������ �Է�����)=>"+insert);
	    	  con.commit();//���������� �޸𸮻��� insert=>���̺� �ݿ��ȴ�.
	    	  if(insert > 0) {//if(insert==1){
	    		  check=true;//������ ����Ȯ��
	    	  }
	      }catch(Exception e) {
	    	  System.out.println("memberInsert() ��������=>"+e);
	      }finally {
	    	  pool.freeConnection(con, pstmt);//rs X =>select������ �ƴϱ⿡
	      }
	    return check;//1 or 0
	}
	//-------------------------------------------------------------------------
	//5.ȸ�������� �����͸� ���� ��½����ִ� �޼���->Ư��ȸ�� ã��(nup)
	//MemberUpdate.jsp���� ȣ���� �޼��带 �ۼ�
	//select * from member where id='nup';//pk
	public MemberDTO getMember(String mem_id) {
		MemberDTO mem=null;//id���� �ش�Ǵ� ���ڵ� �Ѱ��� ����
		
		try {
			con=pool.getConnection();
			sql="select * from member where id=?";
			pstmt=con.prepareStatement(sql);
			pstmt.setString(1, mem_id);
			rs=pstmt.executeQuery();
			//�˻��� ���ڵ��� ���� �ʵ庰�� ��� �ҽ�->ã�� ���ڵ尡 1��->if(rs.next())
			//�Ѱ��̻�==>while(rs.next())=>��Ȯ�� ������ �𸦶� ���
		    if(rs.next()) {
				mem=new MemberDTO();//�����͸� ��Ƽ� ���� ���
				mem.setMem_id(rs.getString("id"));//<%=mem.getMem_id()%>
				mem.setMem_passwd(rs.getString("passwd"));
				mem.setMem_name(rs.getString("name"));
				mem.setMem_phone(rs.getString("phone"));
				mem.setMem_zipcode(rs.getString("zipcode"));
				mem.setMem_address(rs.getString("address"));
				mem.setMem_email(rs.getString("e_mail"));
				mem.setMem_job(rs.getString("job"));
			}
		}catch(Exception e) {
			System.out.println("getMember()��������=>"+e);
		}finally {
			pool.freeConnection(con, pstmt, rs);
		}
		return mem;
	}
	
	//6.ȸ�����������ִ� �޼���->ȸ�����Կ� ����� ����.=>������ �ȴٴ� �κ�(����)
	public boolean memberUpdate(MemberDTO mem) {
		
		boolean check=false;//ȸ������ ��������               
	      
	      try {
	    	  con=pool.getConnection();
	    	  //Ʈ�����->����Ŭ�� �ʼ�(��뷮)->������ġ(rollback)
	    	  con.setAutoCommit(false);//default->
	    	  //commit()�� ����ؾ� ���������� ������ �����Ű�ڴ�.
	    	  sql="update member set passwd=?, name=?, e_mail=?, phone=?, "
	    			 +"zipcode=?, address=?, job=? where id=?";
	    	  
	    	  pstmt=con.prepareStatement(sql);

	    	  pstmt.setString(1, mem.getMem_passwd());
	    	  pstmt.setString(2, mem.getMem_name());
	    	  pstmt.setString(3, mem.getMem_email());
	    	  pstmt.setString(4, mem.getMem_phone());
	    	  pstmt.setString(5, mem.getMem_zipcode());
	    	  pstmt.setString(6, mem.getMem_address());
	    	  pstmt.setString(7, mem.getMem_job());//
	    	  pstmt.setString(8, mem.getMem_id());//id�� �´� �����͸� ã�����ؼ�
	    	  
	    	  int update=pstmt.executeUpdate();//��ȯ 1(����), 0 (����)
	    	  System.out.println("update(������ ��������)=>"+update);
	    	  con.commit();//���������� �޸𸮻��� update=>���̺� �ݿ��ȴ�.
	    	  if(update==1) {
	    		  check=true;//������ ��������Ȯ��
	    	  }
	      }catch(Exception e) {
	    	  System.out.println("memberUpdate() ��������=>"+e);
	      }finally {
	    	  pool.freeConnection(con, pstmt);//rs X =>select������ �ƴϱ⿡
	      }
	    return check;//1 or 0
	}
	
	//7.ȸ��Ż������ִ� �޼���=>1 �޼��� =>1���� SQL������ ��������ִ� �޼���
	//select passwd from member where id='nup'
	//delete from member where id='nup'
	public int memberDelete(String id,String passwd) { //1.�Է�X  2.�Է� O
		String dbpasswd="";//DB�󿡼� ã�� ��ȣ�� ����
		int x=-1;//ȸ��Ż�� ����
		
		try {
			con=pool.getConnection();
			con.setAutoCommit(false);//Ʈ�����ó��=>�߸� ������ ��� ->�ǵ��������ؼ�
			//1.id���� �ش��ϴ� ��ȣ�� ���� ã��
			pstmt=con.prepareStatement("select passwd from member where id=?");
			pstmt.setString(1, id);
			rs=pstmt.executeQuery();
			//��ȣ�� �����Ѵٸ�
			if(rs.next()) {
				dbpasswd=rs.getString("passwd");
				System.out.println("dbpasswd=>"+dbpasswd);//��ȣ���
				//dbpasswd(DB�� ����� ��ȣ)==passwd(���󿡼� �Է��� ��)
				if(dbpasswd.equals(passwd)) {
					pstmt=con.prepareStatement("delete from member where id=?");
					pstmt.setString(1, id);
					int delete=pstmt.executeUpdate();
					System.out.println("delete(ȸ��Ż�� ��������)=>"+delete);//1
					con.commit();
					x=1;//ȸ��Ż�𼺰�
				}else {
					x=0;//ȸ��Ż�� ����->��ȣ�� Ʋ����
				}
			}else {
				x=-1;//��ȣ�� �������� ���� ���
			}
		}catch(Exception e) {
			System.out.println("memberDelete() ����=>"+e);
		}finally {
	        pool.freeConnection(con, pstmt, rs);
		}
		return x;
	}
	

		public int getMemberCount() { 
			int x = 0; // 총 레코드 수를 저장
			try {
				con = pool.getConnection();
				System.out.println("con=>" + con); // 디버깅
				sql ="select count(*) from member"; 
				pstmt = con.prepareStatement(sql);
				rs = pstmt.executeQuery();
				if(rs.next()) {
					x = rs.getInt(1); 
				}
				
			} catch (Exception e) {
				System.out.println("getMemberCount() 예외 발생=>" + e);
				
			} finally {
				pool.freeConnection(con, pstmt, rs);
			}
			return x;
		}
		
		public List<MemberDTO> getMemberList(int start, int end){ 
			List <MemberDTO> memberList = null; 
			
			try {
				con = pool.getConnection();
				System.out.println("con=>" + con); 
				sql = "select * from member order by id limit ?, ?"; 
				pstmt = con.prepareStatement(sql);
				pstmt.setInt(1, start-1);
				pstmt.setInt(2, end);
				rs = pstmt.executeQuery();
				
				if(rs.next()) { 
					memberList = new ArrayList<MemberDTO>(); 
					do {
						MemberDTO mem = new MemberDTO();
						mem.setMem_id(rs.getString(1));
						mem.setMem_passwd(rs.getString(2));
						mem.setMem_name(rs.getString(3));
						mem.setMem_email(rs.getString(4));
						mem.setMem_phone(rs.getString(5));
						mem.setMem_zipcode(rs.getString(6));
						mem.setMem_address(rs.getString(7));
						mem.setMem_job(rs.getString(8));
						memberList.add(mem);
					}while(rs.next());
				}
				
			} catch (Exception e) {
				System.out.println("getArticles() 예외 발생=>" + e);
				
			} finally {
				pool.freeConnection(con, pstmt, rs);
			}
			return memberList; // 
		}
}







