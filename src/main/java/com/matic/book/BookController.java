package com.matic.book;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;
import java.util.Map;

@Controller
public class BookController {

    @Autowired
    private BookService service;

    @GetMapping("/")
    public ModelAndView home(){
        ModelAndView mav = new ModelAndView("index");
        List<Book> listBook = service.listAll();
        mav.addObject("listBook",listBook);
        return mav;
    }

    @GetMapping("/new")
    public String neeBookForm(Map<String, Object> model){
        model.put("book", new Book());
        return "new_book";
    }

    @PostMapping("/save")
    public String saveCustomer(@ModelAttribute("book") Book book){
        service.save(book);
        return "redirect:/";
    }

    @GetMapping("edit")
    public ModelAndView editBookForm(@RequestParam long id){
        ModelAndView mav = new ModelAndView("edit_book");
        Book book = service.get(id);
        mav.addObject("book", book);
        return mav;
    }

    @GetMapping("/delete")
    public String deleteCustomer(@RequestParam long id){
        service.delete(id);
        return "redirect:/";
    }
}
