package us.hennepin.web;

import org.springframework.roo.addon.web.mvc.controller.scaffold.RooWebScaffold;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import us.hennepin.domain.JunkEntity;

@RequestMapping("/junkentitys")
@Controller
@RooWebScaffold(path = "junkentitys", formBackingObject = JunkEntity.class)
public class JunkEntityController {
}
