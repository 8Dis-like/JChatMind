package com.kama.jchatmind.model.entity;

import java.time.LocalDateTime;

import lombok.Builder;
import lombok.Data;

/**
 * @TableName knowledge_base
 */
@Data
@Builder
public class KnowledgeBase {
    private String id;

    private String name;

    private String description;

    // JSON String
    private String metadata;

    private LocalDateTime createdAt;

    private LocalDateTime updatedAt;
}
