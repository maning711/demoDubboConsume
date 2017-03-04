package com.example.controller;

import com.service.DubboService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;

/**
 * Created by ifly on 2017/3/4.
 */
@Controller
public class DubboResumeController {

    @Autowired
    DubboService dubboService;

    @RequestMapping(value = "/dubbo", method = { RequestMethod.GET })
    @ResponseBody
    public List<String> getData(Model model) {
        List<String> list = dubboService.testGetData();
        model.addAttribute("list", list);
        return list;
    }
}
