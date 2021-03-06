package com.stackroute.keepnote.model;

import java.time.LocalDateTime;

public class Note {


	private int noteId;

	private String noteTitle;

	private String noteContent;

	private String noteStatus;

	private LocalDateTime createdAt;

	public Note() {
	}

	public Note(int noteId, String noteTitle, String noteContent, String noteStatus) {
		super();
		this.noteId = noteId;
		this.noteTitle = noteTitle;
		this.noteContent = noteContent;
		this.noteStatus = noteStatus;
	}

	/* All the getters/setters definition should be implemented here */
	public int getNoteId() {
		return noteId;
	}

	public void setNoteId(int noteId) {
		this.noteId = noteId;
	}

	public String getNoteTitle() {
		return noteTitle;
	}

	public void setNoteTitle(String noteTitle) {
		this.noteTitle = noteTitle;
	}

	public String getNoteContent() {
		return noteContent;
	}

	public void setNoteContent(String noteContent) {
		this.noteContent = noteContent;
	}

	public String getNoteStatus() {
		return noteStatus;
	}

	public void setNoteStatus(String noteStatus) {
		this.noteStatus = noteStatus;
	}

	public LocalDateTime getCreatedAt() {
		return LocalDateTime.now();
	}

	/* Override the toString() method */

	@Override
	public String toString() {
		return null;
	}

}