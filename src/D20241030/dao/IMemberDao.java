package D20241030.dao;

import D20241030.dto.Member;

import java.util.List;

public interface IMemberDao {

    public void regMember(Member member);

    public Member getMember(int mno);

    public List<Member> getMembers();

    public void modifyMember(Member member);

    public void delMember(int mno);
}
