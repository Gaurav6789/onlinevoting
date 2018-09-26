package dao;
import java.io.IOException;
import java.sql.*;
import java.util.ArrayList;
import java.util.List;

import conn.MyConnection;
import model.*;
public class VoterDao 
{
	private Connection conn;
	private PreparedStatement pst;
	String sql;
	private ResultSet rs;
	public VoterDao() throws ClassNotFoundException,SQLException,IOException
	{
		conn=MyConnection.getConnection();
	}
	
	
	private RegisterVoter regVoter;
	public RegisterVoter getRegVoter() {
		return regVoter;
	}
	public void setRegVoter(RegisterVoter regVoter) {
		this.regVoter = regVoter;
	}
	public int registerVoter(RegisterVoter rv)throws SQLException
	{
		sql="insert into register values(?,?,?,?,?)";
		pst=conn.prepareStatement(sql);
		pst.setString(1,rv.getName());
		pst.setLong(2,rv.getAadharNo());
		pst.setString(3,rv.getDob());
		pst.setLong(4,rv.getMobileNo());
		pst.setString(5,rv.getEmail());
		return pst.executeUpdate();
	}
	
	
	private RegisterCandidate regCandid;
	public RegisterCandidate getRegCandid() {
		return regCandid;
	}
	public void setRegCandid(RegisterCandidate regCandid) {
		this.regCandid = regCandid;
	}
	public int registerCandidate(RegisterCandidate rc) throws SQLException
	{
		sql="insert into cregister values(?,?,?,?,?,?,?)";
		pst=conn.prepareStatement(sql);
		pst.setInt(1,rc.getId());
		pst.setString(2,rc.getcName());
		pst.setString(3,rc.getpName());
		pst.setLong(4,rc.getAadharNo());
		pst.setString(5,rc.getDob());
		pst.setLong(6,rc.getMobNo());
		pst.setString(7,rc.getEmail());
		return pst.executeUpdate();
	}
	
	public List<RegisterCandidate> viewCandidates(RegisterCandidate r) throws IOException,ClassNotFoundException,SQLException
	{
		List<RegisterCandidate> store=new ArrayList<RegisterCandidate>();
		sql="select * from cregister";
		pst=conn.prepareStatement(sql);
		rs=pst.executeQuery();
		while(rs.next())
		{
			RegisterCandidate rc=new RegisterCandidate();
			rc.setId(rs.getInt("id"));
			rc.setcName(rs.getString("cName"));
			rc.setpName(rs.getString("pName"));
			rc.setAadharNo(rs.getLong("aadharNo"));
			rc.setDob(rs.getString("dob"));
			rc.setMobNo(rs.getLong("mobNo"));
			rc.setEmail(rs.getString("email"));
			store.add(rc);
		}
		return store;
	}
	
	public Boolean validate(ViewVotes view) throws SQLException
	{
		pst=conn.prepareStatement("select * from votes where aadharno=?");
		pst.setLong(1,view.getAadharNo());
		rs=pst.executeQuery();
		if(rs.next())
		{
			return true;
		}
		else
			return false;
	}
	
	
	public Boolean checkVoter(RegisterVoter rv) throws SQLException
	{
		pst=conn.prepareStatement("select * from register where aadhar_no=?");
		pst.setLong(1,rv.getAadharNo());
		rs=pst.executeQuery();
		if(rs.next())
		{
			return true;
		}
		else
			return false;
	}
	
	private ViewVotes view;
	public ViewVotes getView() {
		return view;
	}
	public void setView(ViewVotes view) {
		this.view = view;
	}
	public int addVote(ViewVotes view) throws SQLException
	{
		sql="insert into votes values(?,?)";
		pst=conn.prepareStatement(sql);
		pst.setLong(1,view.getAadharNo());
		pst.setString(2,view.getpName());
		return pst.executeUpdate();
	}
}