package com.huanying.risk.map;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.huanying.framework.BaseController;
import com.huanying.framework.PageBean;
import com.huanying.risk.content.Content;
import com.huanying.risk.content.ContentService;
import com.huanying.risk.content.Country;
import com.huanying.risk.content.Province;
import com.huanying.risk.point.PointService;
import com.huanying.risk.point.Risk_Point;
import com.huanying.risk.source.Risk_Source;
import com.huanying.risk.source.SourceService;

@Controller
public class MapController extends BaseController {
	
	@Autowired
	private ContentService contentService;
	@Autowired
	private SourceService sourceService;
	@Autowired
	private PointService pointService;

	private static Logger logger = Logger.getLogger(MapController.class);
	
	@RequestMapping("/map.do")
	public String map(Model model) throws Exception {
		Map map = new HashMap();
		//获得所有国家
		PageBean pageBean  = contentService.searchCountry(map, 100, 1);
		List country_list = pageBean.getList();
		//获得所有风险源
		map.clear();
		pageBean = sourceService.searchSources(map, 100, 1);
		List source_list = pageBean.getList();
		//获得所有风险点
		map.clear();
		pageBean = pointService.searchPoints(map, 100, 1);
		List point_list = pageBean.getList();
		//组装成key=point_id value=权重的map
		Map pointMap = new HashMap();
		for(int i=0; i<point_list.size(); i++){
			Risk_Point point = (Risk_Point)point_list.get(i);
			pointMap.put(point.getId(), point.getWeight());
		}
		
		//循环国家
		
		//主页需要两种数据
		//1.国家总揽List(Map({"国家名"："","国家code":"","分数":"","风险源列表":List(Map({"风险源名":"","分数":""}))}))
		List<Map> conntry_all_list = new ArrayList<Map>();
		//2.国家各风险源详情 List(Map("风险源名":"","国家列表"：List(Map({"国家名"："","国家id":"","单项风险源分数":"","风险点列表":List(Map({"风险点名":"","分数":""}))}))))
		
//		for(int i=0; i<country_list.size(); i++){
//			float country_total = 0;
//			
//			Map countryMap = new HashMap();
//			//记录全国内每一个风险源总得分key=风险源id  value=得分
//			Map<Integer,Float> country_source_map = new HashMap();
//			
//			Country country = (Country)country_list.get(i);
//			//获得该国所有省份
//			map.clear();
//			map.put("country_id", country.getId());
//			pageBean= contentService.searchProvince(map, 100, 1);
//			List province_list = pageBean.getList();
//			//省份总揽List(Map({"省名"："","省code":"","总分数":"","风险源列表":List(Map({"风险源名":"","分数":""}))}))
//			List<Map> province_all_list = new ArrayList<Map>();
//			//循环所有省
//			for(int j=0; j<province_list.size(); j++){
//				
//				Map province_source_map = new HashMap();
//				Province province = (Province)province_list.get(j);
//				//获得当前省所有风险点打分情况
//				map.clear();
//				map.put("province_id", province.getId());
//				pageBean = contentService.searchContent(map, 100, 1);
//				List content_list = pageBean.getList();
//				//循环风险点得分，组成key=point_id  value=得分的map
//				Map contentMap = new HashMap();
//				for(int k=0; k<content_list.size(); k++){
//					Content content = (Content)content_list.get(k);
//					contentMap.put(content.getPoint().getId(), content.getScore());
//				}
//				
//				
//				List province_source_data_list = new ArrayList();
//				float province_total = 0;
//				//循环风险源，计算当前省内每个风险源分数
//				for(int h=0; h<source_list.size(); h++){
//					float province_source_total = 0;
//					Map province_source_score = new HashMap();
//					Map province_one_source_score = new HashMap();
//					Risk_Source source = (Risk_Source)source_list.get(h);
//					if(country_source_map.get(source.getId()) == null){
//						country_source_map.put(source.getId(), Float.valueOf(0));
//					}
//					
//					//获得当前风险源下所有风险点
//					map.clear();
//					map.put("source_id", source.getId());
//					pageBean = pointService.searchPoints(map, 100, 1);
//					List source_point_list = pageBean.getList();
//					List provice_source_point_data_list = new ArrayList();
//					Map province_point_map = new HashMap();
//					//循环当前风险源下所有风险点，获得评分
//					for(int f=0; f<source_point_list.size(); f++){
//						Risk_Point p = (Risk_Point)source_point_list.get(f);
//						//获得打分
//						float score = (float)contentMap.get(p.getId());
//						float all = 5;
//						float weight = (float)pointMap.get(p.getId());
//						float final_score = (score/all)*weight;
//						country_total+=final_score;
//						country_source_map.put(source.getId(),country_source_map.get(source.getId())+final_score);
//						province_total+=final_score;
//						province_source_total+=final_score;
//						province_point_map.put("point_name", p.getName());
//						province_point_map.put("point_score", score);
//						provice_source_point_data_list.add(province_point_map);
//					}
//					province_source_score.put("source_name",source.getName());
//					province_source_score.put("source_score", province_source_total);
//					province_source_data_list.add(province_source_score);
//					
//					
//				}
//				//组装省份主页数据  List(Map({省名,""},{分数,""}{数据,"List(Map{风险源名,""},{分数,""})"})
//				province_source_map.put("province_name", province.getEn_name());
//				province_source_map.put("province_code", province.getCode());
//				province_source_map.put("score", province_total);
//				province_source_map.put("data", province_source_data_list);
//				
//				//组装省份各风险源List
//				
//				
//			}
//			//组装主页1中的map
//			List country_soure_list = new ArrayList();
//			for(int h=0; h<source_list.size(); h++){
//				Map source_map = new HashMap();
//				Risk_Source source = (Risk_Source)source_list.get(h);
//				source_map.put("source_name", source.getName());
//				source_map.put("score", country_source_map.get(source.getId()));
//				country_soure_list.add(source_map);
//			}
//			countryMap.put("en_name", country.getEn_name());
//			countryMap.put("code", country.getCode());
//			countryMap.put("source_list", country_soure_list);
//			conntry_all_list.add(countryMap);
//		}
		
		return "index/map";
	}
	
	@RequestMapping("/nsd_map.do")
	public String nsd_map(Model model) throws Exception {
		Map map = new HashMap();
		return "index/nsd_map";
	}
	
	
	public static void main(String[] args) {
		float a = 4;
		float b = 5;
		float c = a/b;
		System.out.println(c);
	}
}
