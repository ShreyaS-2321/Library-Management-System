package com.bibliohive.project;

public class Books {
    private String title;
    private String imageUrl;
    private String stream;
    private int year;


    public Books(String title, String imageUrl, String stream, int year) {
        this.title = title;
        this.imageUrl = imageUrl;
        this.stream = stream;
        this.year = year;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getImageUrl() {
        return imageUrl;
    }

    public void setImageUrl(String imageUrl) {
        this.imageUrl = imageUrl;
    }

    public String getStream() {
        return stream;
    }

    public void setStream(String stream) {
        this.stream = stream;
    }

    public int getYear() {
        return year;
    }

    public void setYear(int year) {
        this.year = year;
    }
}

