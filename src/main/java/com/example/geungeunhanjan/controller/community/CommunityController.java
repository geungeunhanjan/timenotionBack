package com.example.geungeunhanjan.controller.community;

<<<<<<< HEAD
=======


import com.example.geungeunhanjan.domain.dto.community.*;
import com.example.geungeunhanjan.domain.dto.inquiryPage.InquiryCriteria;
import com.example.geungeunhanjan.domain.dto.inquiryPage.InquiryPage;
import com.example.geungeunhanjan.mapper.community.InquiryMapper;
import com.example.geungeunhanjan.service.community.InquiryService;

import com.example.geungeunhanjan.domain.dto.community.InquiryDTO;


import com.example.geungeunhanjan.service.community.NoticeService;

import com.example.geungeunhanjan.service.user.UserService;
import lombok.RequiredArgsConstructor;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;

import org.springframework.web.bind.annotation.*;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.example.geungeunhanjan.domain.dto.NoticePage.NoticeCriteria;
import com.example.geungeunhanjan.domain.dto.NoticePage.NoticePage;
>>>>>>> main
import com.example.geungeunhanjan.domain.dto.community.InquiryDTO;
import com.example.geungeunhanjan.service.community.InquiryService;

import com.example.geungeunhanjan.domain.dto.community.NoticeDTO;
import com.example.geungeunhanjan.service.community.NoticeService;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

<<<<<<< HEAD
=======
import org.springframework.web.bind.annotation.*;



import java.time.LocalDateTime;
>>>>>>> main
import java.util.List;


// 커뮤티니로

@Controller
@RequestMapping("/community")
@RequiredArgsConstructor
public class CommunityController {
    private final InquiryService inquiryService;
    private final NoticeService noticeService;

<<<<<<< HEAD
=======
<<<<<<< HEAD
<<<<<<< HEAD
>>>>>>> main


    public CommunityController(InquiryService inquiryService, NoticeService noticeService) {
        this.inquiryService = inquiryService;
        this.noticeService = noticeService;
<<<<<<< HEAD
=======
        this.noticeMapper = noticeMapper;
    }
=======
    private final InquiryMapper inquiryMapper;
    private final UserService userService;
>>>>>>> 9911c6037aaa4a7920ff49e2e1260789b1c82d17
>>>>>>> main

    }


        @GetMapping("/inquiry")
        public String community (InquiryCriteria inquiryCriteria, Model model){
            List<InquiryPagingDTO> inquiries = inquiryService.selectAllInquiryPage(inquiryCriteria);
            int total = inquiryService.selectInquiryTotal();
            InquiryPage inquiryPage = new InquiryPage(inquiryCriteria, total);

            model.addAttribute("inquiries", inquiries);
            model.addAttribute("page", inquiryPage);

            System.out.println(total);
            System.out.println("page = " + inquiryPage);

            return "/community/inquiry";
//
//        List<InquiryDTO> inquiries = inquiryService.selectInquiryAll();
//
//
//        model.addAttribute("inquiries", inquiries);
//        return "community/inquiry";
        }


        @GetMapping("/inquiry/{inquiryId}")
        @ResponseBody
        public InquiryDTO inquiryDetail (@PathVariable("inquiryId") Long inquiryId){
            return inquiryService.selectInquiryDetail(inquiryId);
        }

<<<<<<< HEAD
    //공지버튼 클릭시
    @GetMapping("/notification")
    public String notification(Model model) {

        List<NoticeDTO> notices = noticeService.selectNoticeAll();
        model.addAttribute("notices", notices);

        return "community/notification";
    }

    //공지페이지 리스트 클릭시
    @GetMapping("/notification/community_detail/{noticeId}")
    public String notificationDetail(Model model, @PathVariable("noticeId") long noticeId) {
=======

        //공지버튼 클릭시
        @GetMapping("/notification")
        public String notification (Model model, NoticeCriteria noticeCriteria, HttpServletRequest request){

            //로그인 한 유저의 userId 를 같이 보냄
            //userId = 1인 회원만 작성 삭제 가능
            Long loggedInUserId = (Long) request.getSession().getAttribute("userId");
            model.addAttribute("loggedInUserId", loggedInUserId);

            //공지 리스트 정보 가져오기
//        List<NoticeDTO> notices = noticeService.selectNoticeAll();
//        model.addAttribute("notices", notices);

            // 페이지 처리
            List<NoticePageDTO> noticeLists = noticeService.selectAllPageNotice(noticeCriteria);
            System.out.println("noticeLists" + noticeLists);
            int total = noticeService.selectTotalNotice();
            System.out.println("total :" + total);
            NoticePage noticePage = new NoticePage(noticeCriteria, total);
            System.out.println(noticePage);


            //페이징 정보 가져오기
            model.addAttribute("noticeLists", noticeLists);
            model.addAttribute("page", noticePage);


            return "community/notification";
        }

        //공지 삭제시
        @PostMapping("/notification/{noticeId}")
        public String notification ( @PathVariable("noticeId") long noticeId){
//        System.out.println(noticeId);
            noticeService.deleteNotice(noticeId);
            return "redirect:/community/notification";
        }

        //공지페이지 리스트 클릭시
        @GetMapping("/notification/community_detail/{noticeId}")
        public String notificationDetail (Model model,@PathVariable("noticeId") long noticeId){
>>>>>>> main

            NoticeDTO notice = noticeService.selectNoticeDetail(noticeId);

            model.addAttribute("notice", notice);

<<<<<<< HEAD
        return "community/community_detail";
    }
<<<<<<< HEAD
=======
<<<<<<< HEAD
=======
=======
            return "community/community_detail";
        }
>>>>>>> 9911c6037aaa4a7920ff49e2e1260789b1c82d17


        @PostMapping("/inquiry/deleteInquiry")
        public ResponseEntity<String> deleteInquiry (@RequestParam("inquiryId") Long
        inquiryId, @RequestParam("userId") Long userId){
            // inquiryId와 userId를 사용하여 삭제 작업 수행
            inquiryMapper.inquiryDelete(inquiryId, userId);
            // 응답에 성공 메시지를 포함하여 반환
            return ResponseEntity.ok("삭제 완료");
        }

        @PostMapping("/inquiry/insertInquiry")
        public String insertInquiry (@ModelAttribute("inquiryWriteDTO") InquiryWriteDTO
        inquiryWriteDTO, @SessionAttribute("userId") Long userId){

            String userNickname = userService.selectUserNickname(userId);
            ;

            inquiryWriteDTO.setUserId(userId);
            System.out.println(userId);
            inquiryWriteDTO.setUserNickname(userNickname);
//        inquiryDTO.setInquiryCreatedDate();
            LocalDateTime currentDateTime = LocalDateTime.now();
            inquiryWriteDTO.setInquiryCreatedDate(currentDateTime);
//        inquiryWriteDTO.setInquiryCreatedDate(new Date().);


            inquiryService.inquiryWrite(inquiryWriteDTO);

            return "redirect:/community/inquiry";
        }

        @GetMapping("/notification/notification-detail")
        public String notificationDetail () {
            return "community/notification-detail";
        }

//    @PostMapping("/notification/notification-detail")
//    public String insertNotice(@ModelAttribute("noticeVO") NoticeVO noticeVO,
//                               @RequestParam("userId") Long userId, HttpServletRequest request){
//        noticeVO.setNoticeId(noticeService.getNoticeSeqNext()) ;
//        noticeService.insertNotice(noticeVO);
//        noticeVO.setUserId(noticeService.getUserId);
//        return "redirect:/community/notification";
////     ☆★☆★   더미데이터 값 delete하고 다시 확인해보기 ☆★☆★☆★☆★
//    }
        @PostMapping("/notification/notification-detail")
        public String insertNotice (@ModelAttribute("noticeVO") NoticeVO noticeVO, HttpServletRequest request, Model
        model){
            // 현재 사용자의 userId를 세션에서 가져오기
            Long userId = (Long) request.getSession().getAttribute("userId");

            if (userId == null) {
                // userId가 없으면 에러 처리 또는 로그인 페이지로 리다이렉트
                return "redirect:/login";
            }

            // noticeVO에 userId 설정
            noticeVO.setUserId(userId);
            System.out.println(noticeVO);
            // noticeId 설정 및 공지사항 등록
            noticeVO.setNoticeId(noticeService.getNoticeSeqNext());


            // 현재 시간을 LocalDateTime 형식으로 가져오기
            LocalDateTime currentDateTime = LocalDateTime.now();
            // noticeCreatedDate 필드에 현재 시간 할당
            noticeVO.setNoticeCreatedDate(currentDateTime);

            //최종으로 insert시키기
            noticeService.insertNotice(noticeVO);

            return "redirect:/community/notification";
        }

<<<<<<< HEAD
    return "redirect:/community/notification";
}
>>>>>>> 19fb4ec5d3745354d6b194235c5c5c6eda8b4203
=======
>>>>>>> 9911c6037aaa4a7920ff49e2e1260789b1c82d17
>>>>>>> main
}


