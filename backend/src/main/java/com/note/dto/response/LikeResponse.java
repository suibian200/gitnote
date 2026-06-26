package com.note.dto.response;

public class LikeResponse {

    public LikeResponse() {}

    private boolean liked;
    private long totalLikes;

    public LikeResponse(boolean liked, long totalLikes) {
        this.liked = liked;
        this.totalLikes = totalLikes;
    }

    public boolean isLiked() { return liked; }
    public void setLiked(boolean liked) { this.liked = liked; }
    public long getTotalLikes() { return totalLikes; }
    public void setTotalLikes(long totalLikes) { this.totalLikes = totalLikes; }
}
