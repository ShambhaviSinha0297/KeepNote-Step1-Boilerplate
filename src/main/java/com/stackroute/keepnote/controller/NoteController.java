package com.stackroute.keepnote.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.stackroute.keepnote.model.Note;
import com.stackroute.keepnote.repository.NoteRepository;

@Controller
public class NoteController {

	@Autowired
	NoteRepository repository;

	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String getNotes(ModelMap model) {
		model.addAttribute("notes", repository.getAllNotes());
		model.addAttribute("command", new Note());
		return "index";
	}

	@RequestMapping(value = "/saveNote", method = RequestMethod.POST)
	public String saveNote(@ModelAttribute("note") Note note, ModelMap model) {
		repository.addNote(note);
		model.addAttribute("notes", repository.getAllNotes());
		model.addAttribute("command", new Note());
		return "index";
	}

	@RequestMapping(value = "/deleteNote")
	public String deleteNote(@RequestParam int noteId, ModelMap model) {
		repository.deleteNote(noteId);
		model.addAttribute("notes", repository.getAllNotes());
		model.addAttribute("command", new Note());
		return "redirect:" + "/";
	}

}