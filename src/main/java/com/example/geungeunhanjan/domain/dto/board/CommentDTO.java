<<<<<<< HEAD
package com.example.geungeunhanjan.domain.dto.board;

import lombok.Data;
import org.springframework.stereotype.Component;

import java.time.LocalDateTime;

@Component
@Data
public class CommentDTO {
    private String commentsContent;
    private LocalDateTime createdDate;
    private String boardTitle;
    private Long boardId;
    private Long userId; // 댓글 작성자 id
    private Long uniId;
}
=======
package com.example.geungeunhanjan.domain.dto.board;

import lombok.Data;
import org.springframework.stereotype.Component;

import java.time.LocalDateTime;

@Component
@Data
public class CommentDTO {
    private String commentsContent;
    private LocalDateTime createdDate;
    private String boardTitle;
    private Long boardId;
    private Long userId; // 댓글 작성자 id
    private Long uniId;
}
>>>>>>> ba7783b6573a0df4537eea9c4fe0af6ba8e183d7
