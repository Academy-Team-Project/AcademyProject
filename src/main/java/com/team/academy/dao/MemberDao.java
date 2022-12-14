package com.team.academy.dao;

import java.util.ArrayList;

import com.team.academy.dto.MemberDto;

public interface MemberDao {	// 멤버 관련 Dao method, 추상 Method
	
	public void memberJoinDao(String membertype, String memberid, String membername, String memberpw, String memberbirth, String membertel, String memberemail, String memberaddress);	// 회원가입 관련 method

	public int memberidCheckDao(String memberid);	// 회원 가입한 아이디가 있는지 중복 여부 확인을 위한 method(아이디가 존재하면 1, 아니면 0이 반환)

	public int memberidtypeCheckDao(String membertype, String memberid);	// 회원 아이디와 회원 구분의 일치 여부 체크 (일치하는 경우 1을 반환, 아니면 0을 반환)
	
	public int memberidtypepwCheckDao(String membertype, String memberid, String memberpw);	// 회원 아이디와 회원 구분, 비밀번호의 일치여부 체크 (일치하는 경우 1을 반환, 아니면 0을 반환)
	
	public MemberDto memberdetailDao(String memberid);	// 아이디로 검색해서 해당하는 아이디의 모든 정보를 반환
	
	public void membermodifyDao(String membername, String memberpw, String memberbirth, String membertel, String memberemail, String memberaddress, String memberid);	// 회원 정보 수정에 필요한 데이터목록, where 조건에 들어가는건 마지막에 넣어야함
	
	public ArrayList<MemberDto> memberlistDao();	// 회원 가입한 회원 목록을 가져와서 리스트 작성, 전부 가져오기 때문에 변수가 필요 없음

	public MemberDto memberviewDao(String memberid);	// 회원 정보 상세보기(select이므로 dto자료형 필요)
	
	public void memberdeleteDao(String memberid);	// 등록된 회원 삭제
	
//	[회원 검색용 Dao]
	public ArrayList<MemberDto> memberTypeSearch(String keyword);	// 회원 구분으로 검색한 결과 리스트 출력
	public ArrayList<MemberDto> memberNameSearch(String keyword);	// 회원 이름으로 검색한 결과 리스트 출력
}
