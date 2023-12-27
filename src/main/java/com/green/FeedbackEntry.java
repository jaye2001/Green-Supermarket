package com.green;

public class FeedbackEntry {
    private String userName;
    private String feedbackMessage;


	public void Set_values(String _userName, String _feedbackMessage) {
        userName = _userName;
        feedbackMessage = _feedbackMessage;
    }

    public String getUserName() {
        return userName;
    }

    public String getFeedbackMessage() {
        return feedbackMessage;
    }

		
	
}