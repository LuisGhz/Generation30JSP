package com.exercise30jsp.model;

public class Message {
	public String text;
	
	public Message ()
	{
		
	}
	
	public Message(String text)
	{
		this.text = text;
	}
	
	public String getText()
	{
		return text;
	}
	
	public void setText(String text)
	{
		this.text = text;
	}

}
