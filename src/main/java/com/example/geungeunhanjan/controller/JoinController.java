package com.example.geungeunhanjan.controller;

import com.example.geungeunhanjan.domain.vo.UniVO;
import com.example.geungeunhanjan.domain.vo.UserVO;
import com.example.geungeunhanjan.mapper.UserMapper;
import jakarta.servlet.http.HttpServletRequest;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import java.time.LocalDate;
import java.time.LocalDateTime;

// 회원가입으로
@RequestMapping("/join")
@Controller
public class JoinController {

    private final UserMapper userMapper;

    public JoinController(UserMapper userMapper) {
        this.userMapper = userMapper;
    }

    // 회원가입으로
    @GetMapping()
    public String join() {
        return "/user/join";
    }

    // 기능처리
    @PostMapping()
    public String joinPost(HttpServletRequest request) {
        UserVO userVO = new UserVO();
        String year = request.getParameter("userBirth");
        String month = request.getParameter("month");
        String day = request.getParameter("day");

        String formattedDate = String.format("%s-%02d-%02d", year, Integer.parseInt(month), Integer.parseInt(day));
        LocalDate birthDate = LocalDate.parse(formattedDate);

        userVO.setUserId(userMapper.getUserSeqNext());
        userVO.setUserName(request.getParameter("userName"));
        userVO.setUserPassword(request.getParameter("userPassword"));
        userVO.setUserEmail(request.getParameter("userEmail"));
        userVO.setUserNickname(request.getParameter("userNickname"));
        userVO.setUserBirth(birthDate.atStartOfDay());

        userMapper.userJoin(userVO);

        UniVO uniVO = new UniVO();
        uniVO.setUniId(userMapper.getUniSeq());
        uniVO.setUserId(userMapper.getUserSeqCurr());

        userMapper.userUniJoin(uniVO);


        return "redirect:/login";
    }
}