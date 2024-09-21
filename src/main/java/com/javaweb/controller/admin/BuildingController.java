package com.javaweb.controller.admin;



import com.javaweb.enums.TypeCode;

import com.javaweb.enums.districtCode;
import com.javaweb.model.dto.BuildingDTO;

import com.javaweb.model.response.BuildingSearchResponse;
import com.javaweb.service.IUserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import java.util.ArrayList;
import java.util.List;

@Controller(value="buildingControllerOfAdmin")
public class BuildingController {
    @Autowired
    private IUserService userService;

    @RequestMapping(value="/admin/building-list", method = RequestMethod.GET)
    public ModelAndView buildingList(@ModelAttribute BuildingDTO buildingDTO, HttpServletRequest request){
        ModelAndView mav = new ModelAndView("admin/building/list");
        mav.addObject("modelSearch",buildingDTO);// sau khi tim kiem va hien ket qua cac fields van duoc gan du lieu
        //DB
        List<BuildingSearchResponse> responseList = new ArrayList<>();
        BuildingSearchResponse item1 = new BuildingSearchResponse();
        item1.setId(3L);
        item1.setName("ACM");
        item1.setAddress("130 Ha NOi");
        item1.setNumberOfBasement(2L);
        item1.setManagerPhone("084968");
        BuildingSearchResponse item2 = new BuildingSearchResponse();
        item2.setId(5L);
        item2.setName("MA");
        item2.setAddress("130Hai Phongh");
        item2.setNumberOfBasement(3L);
        item2.setRentArea("100,200,400");
        item2.setManagerPhone("084968");
        responseList.add(item1);
        responseList.add(item2);
        mav.addObject("buildingList",responseList);
        mav.addObject("listStaffs",userService.getStaffs());
        mav.addObject("listType", districtCode.type());
        mav.addObject("typeCodes", TypeCode.type());
        return mav;
    }

    @RequestMapping(value="/admin/building-edit", method = RequestMethod.GET)
    public ModelAndView buildingEdit(@ModelAttribute("buildingEdit") BuildingDTO buildingDTO,HttpServletRequest request){
        ModelAndView mav = new ModelAndView("admin/building/edit");
        mav.addObject("listType", districtCode.type());
        mav.addObject("typeCodes", TypeCode.type());
        return mav;
    }

    @RequestMapping(value="/admin/building-edit-{id}", method = RequestMethod.GET)
    public ModelAndView buildingEdit(@PathVariable("id") Long Id, HttpServletRequest request){
        ModelAndView mav = new ModelAndView("admin/building/edit");
        BuildingDTO buildingDTO = new BuildingDTO();
        buildingDTO.setName("hello");
        buildingDTO.setId(Id);
        mav.addObject("buildingEdit",buildingDTO);
        mav.addObject("listType", districtCode.type());
        mav.addObject("typeCodes", TypeCode.type());
        return mav;
    }

}