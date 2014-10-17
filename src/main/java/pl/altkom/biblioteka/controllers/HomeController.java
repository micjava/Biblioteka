package pl.altkom.biblioteka.controllers;

import java.text.DateFormat;
import java.util.Date;
import java.util.Locale;
import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {
	
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	/**
	 * Simply selects the home view to render by returning its name.
	 */
            @RequestMapping(value = "/home2", method = RequestMethod.GET)
    public String home2(Locale locale, Model model, HttpServletRequest request) {
        logger.info("Welcome home2! The client locale is {}.", locale);

//        request = (HttpServletRequest) FacesContext.getCurrentInstance().getExternalContext().getRequest();  
//        String ip = request.getRemoteAddr();  
//        request = (HttpServletRequest) FacesContext.getCurrentInstance().getExternalContext().getRequest();
//        String ipAddress = request.getHeader("X-FORWARDED-FOR");
//        if (ipAddress == null) {
//            ipAddress = request.getRemoteAddr();
//        }

        Date date = new Date();
        DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);

        String formattedDate = dateFormat.format(date);

        model.addAttribute("serverTime", formattedDate);
        model.addAttribute("locale", locale);
        model.addAttribute("os", System.getProperty("os.name"));
    //    model.addAttribute("ip", ip);

        model.addAttribute("os2", System.getProperty("os.arch"));
        model.addAttribute("os3", System.getProperty("os.version"));
  
        return "home2";
    }
        
        
        
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(Locale locale, Model model) {
		logger.info("Welcome home! The client locale is {}.", locale);
		
		Date date = new Date();
		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);
		
		String formattedDate = dateFormat.format(date);
		
		model.addAttribute("serverTime", formattedDate );
		
		return "home";
	}
	
}
