package br.com.uoutec.community.ediacaran.test.pub;

import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import java.util.stream.Collectors;

import javax.inject.Singleton;

@Singleton
public class EntityService {

	private int index = 1;
	
	private List<ExampleEntity> data = Arrays.asList(
			new ExampleEntity(index++, "jose antonio", "Male"),
			new ExampleEntity(index++, "Cara Hardy", "Male"),
			new ExampleEntity(index++, "Jayceon Kent", "Female"),
			new ExampleEntity(index++, "Jazmine Villa", "Male"),
			new ExampleEntity(index++, "Clay Moreno", "Male"),
			new ExampleEntity(index++, "Mary Ware", "Female"),
			new ExampleEntity(index++, "Tadeo Dorsey", "Male"),
			new ExampleEntity(index++, "Addyson Durham", "Female"),
			new ExampleEntity(index++, "Kellen Meza", "Male"),
			new ExampleEntity(index++, "Rosa Bentley", "Female"),
			new ExampleEntity(index++, "Randy Levy", "Male"),
			new ExampleEntity(index++, "Flora Spence", "Male"),
			new ExampleEntity(index++, "Cillian Fisher", "Female"),
			new ExampleEntity(index++, "Arya Johnston", "Male"),
			new ExampleEntity(index++, "Felix Smith", "Female"),
			new ExampleEntity(index++, "Olivia Rich", "Female"),
			new ExampleEntity(index++, "Miller Nunez", "Male"),
			new ExampleEntity(index++, "Mya Rios", "Male"),
			new ExampleEntity(index++, "Israel Benson", "Male"),
			new ExampleEntity(index++, "Collins Huang", "Male"),
			new ExampleEntity(index++, "Ayaan Madden", "Male"),
			new ExampleEntity(index++, "Violette Banks", "Male"),
			new ExampleEntity(index++, "Martin Potts", "Male"),
			new ExampleEntity(index++, "Ellison Neal", "Male"),
			new ExampleEntity(index++, "Kane Stafford", "Male"),
			new ExampleEntity(index++, "Bridget Costa", "Male"),
			new ExampleEntity(index++, "Kenji Reyes", "Female"),
			new ExampleEntity(index++, "Audrey Meza", "Male"),
			new ExampleEntity(index++, "Lucian McLaughlin", "Female"),
			new ExampleEntity(index++, "Stephanie Potts", "Male"),
			new ExampleEntity(index++, "Alfred Castaneda", "Male"),
			new ExampleEntity(index++, "Keira Schwartz", "Female"),
			new ExampleEntity(index++, "Edwin Knight", "Male"),
			new ExampleEntity(index++, "Gracie Schmidt", "Female"),
			new ExampleEntity(index++, "Zayden McCall", "Male"),
			new ExampleEntity(index++, "Kai Gregory", "Male"),
			new ExampleEntity(index++, "jose antonio", "Male"),
			new ExampleEntity(index++, "Cara Hardy", "Male"),
			new ExampleEntity(index++, "Jayceon Kent", "Female"),
			new ExampleEntity(index++, "Jazmine Villa", "Male"),
			new ExampleEntity(index++, "Clay Moreno", "Male"),
			new ExampleEntity(index++, "Mary Ware", "Female"),
			new ExampleEntity(index++, "Tadeo Dorsey", "Male"),
			new ExampleEntity(index++, "Addyson Durham", "Female"),
			new ExampleEntity(index++, "Kellen Meza", "Male"),
			new ExampleEntity(index++, "Rosa Bentley", "Female"),
			new ExampleEntity(index++, "Randy Levy", "Male"),
			new ExampleEntity(index++, "Flora Spence", "Male"),
			new ExampleEntity(index++, "Cillian Fisher", "Female"),
			new ExampleEntity(index++, "Arya Johnston", "Male"),
			new ExampleEntity(index++, "Felix Smith", "Female"),
			new ExampleEntity(index++, "Olivia Rich", "Female"),
			new ExampleEntity(index++, "Miller Nunez", "Male"),
			new ExampleEntity(index++, "Mya Rios", "Male"),
			new ExampleEntity(index++, "Israel Benson", "Male"),
			new ExampleEntity(index++, "Collins Huang", "Male"),
			new ExampleEntity(index++, "Ayaan Madden", "Male"),
			new ExampleEntity(index++, "Violette Banks", "Male"),
			new ExampleEntity(index++, "Martin Potts", "Male"),
			new ExampleEntity(index++, "Ellison Neal", "Male"),
			new ExampleEntity(index++, "Kane Stafford", "Male"),
			new ExampleEntity(index++, "Bridget Costa", "Male"),
			new ExampleEntity(index++, "Kenji Reyes", "Female"),
			new ExampleEntity(index++, "Audrey Meza", "Male"),
			new ExampleEntity(index++, "Lucian McLaughlin", "Female"),
			new ExampleEntity(index++, "Stephanie Potts", "Male"),
			new ExampleEntity(index++, "Alfred Castaneda", "Male"),
			new ExampleEntity(index++, "Keira Schwartz", "Female"),
			new ExampleEntity(index++, "Edwin Knight", "Male"),
			new ExampleEntity(index++, "Gracie Schmidt", "Female"),
			new ExampleEntity(index++, "Zayden McCall", "Male"),
			new ExampleEntity(index++, "Kai Gregory", "Male"),
			new ExampleEntity(index++, "jose antonio", "Male"),
			new ExampleEntity(index++, "Cara Hardy", "Male"),
			new ExampleEntity(index++, "Jayceon Kent", "Female"),
			new ExampleEntity(index++, "Jazmine Villa", "Male"),
			new ExampleEntity(index++, "Clay Moreno", "Male"),
			new ExampleEntity(index++, "Mary Ware", "Female"),
			new ExampleEntity(index++, "Tadeo Dorsey", "Male"),
			new ExampleEntity(index++, "Addyson Durham", "Female"),
			new ExampleEntity(index++, "Kellen Meza", "Male"),
			new ExampleEntity(index++, "Rosa Bentley", "Female"),
			new ExampleEntity(index++, "Randy Levy", "Male"),
			new ExampleEntity(index++, "Flora Spence", "Male"),
			new ExampleEntity(index++, "Cillian Fisher", "Female"),
			new ExampleEntity(index++, "Arya Johnston", "Male"),
			new ExampleEntity(index++, "Felix Smith", "Female"),
			new ExampleEntity(index++, "Olivia Rich", "Female"),
			new ExampleEntity(index++, "Miller Nunez", "Male"),
			new ExampleEntity(index++, "Mya Rios", "Male"),
			new ExampleEntity(index++, "Israel Benson", "Male"),
			new ExampleEntity(index++, "Collins Huang", "Male"),
			new ExampleEntity(index++, "Ayaan Madden", "Male"),
			new ExampleEntity(index++, "Violette Banks", "Male"),
			new ExampleEntity(index++, "Martin Potts", "Male"),
			new ExampleEntity(index++, "Ellison Neal", "Male"),
			new ExampleEntity(index++, "Kane Stafford", "Male"),
			new ExampleEntity(index++, "Bridget Costa", "Male"),
			new ExampleEntity(index++, "Kenji Reyes", "Female"),
			new ExampleEntity(index++, "Audrey Meza", "Male"),
			new ExampleEntity(index++, "Lucian McLaughlin", "Female"),
			new ExampleEntity(index++, "Stephanie Potts", "Male"),
			new ExampleEntity(index++, "Alfred Castaneda", "Male"),
			new ExampleEntity(index++, "Keira Schwartz", "Female"),
			new ExampleEntity(index++, "Edwin Knight", "Male"),
			new ExampleEntity(index++, "Gracie Schmidt", "Female"),
			new ExampleEntity(index++, "Zayden McCall", "Male"),
			new ExampleEntity(index++, "Kai Gregory", "Male"),
			new ExampleEntity(index++, "jose antonio", "Male"),
			new ExampleEntity(index++, "Cara Hardy", "Male"),
			new ExampleEntity(index++, "Jayceon Kent", "Female"),
			new ExampleEntity(index++, "Jazmine Villa", "Male"),
			new ExampleEntity(index++, "Clay Moreno", "Male"),
			new ExampleEntity(index++, "Mary Ware", "Female"),
			new ExampleEntity(index++, "Tadeo Dorsey", "Male"),
			new ExampleEntity(index++, "Addyson Durham", "Female"),
			new ExampleEntity(index++, "Kellen Meza", "Male"),
			new ExampleEntity(index++, "Rosa Bentley", "Female"),
			new ExampleEntity(index++, "Randy Levy", "Male"),
			new ExampleEntity(index++, "Flora Spence", "Male"),
			new ExampleEntity(index++, "Cillian Fisher", "Female"),
			new ExampleEntity(index++, "Arya Johnston", "Male"),
			new ExampleEntity(index++, "Felix Smith", "Female"),
			new ExampleEntity(index++, "Olivia Rich", "Female"),
			new ExampleEntity(index++, "Miller Nunez", "Male"),
			new ExampleEntity(index++, "Mya Rios", "Male"),
			new ExampleEntity(index++, "Israel Benson", "Male"),
			new ExampleEntity(index++, "Collins Huang", "Male"),
			new ExampleEntity(index++, "Ayaan Madden", "Male"),
			new ExampleEntity(index++, "Violette Banks", "Male"),
			new ExampleEntity(index++, "Martin Potts", "Male"),
			new ExampleEntity(index++, "Ellison Neal", "Male"),
			new ExampleEntity(index++, "Kane Stafford", "Male"),
			new ExampleEntity(index++, "Bridget Costa", "Male"),
			new ExampleEntity(index++, "Kenji Reyes", "Female"),
			new ExampleEntity(index++, "Audrey Meza", "Male"),
			new ExampleEntity(index++, "Lucian McLaughlin", "Female"),
			new ExampleEntity(index++, "Stephanie Potts", "Male"),
			new ExampleEntity(index++, "Alfred Castaneda", "Male"),
			new ExampleEntity(index++, "Keira Schwartz", "Female"),
			new ExampleEntity(index++, "Edwin Knight", "Male"),
			new ExampleEntity(index++, "Gracie Schmidt", "Female"),
			new ExampleEntity(index++, "Zayden McCall", "Male"),
			new ExampleEntity(index++, "Kai Gregory", "Male"),
			new ExampleEntity(index++, "Travis Cuevas", "Male")
	);
	
	@SuppressWarnings("unchecked")
	public EntityResult search(Integer minID, Integer maxID,
			String name, String gender, Integer firstResult, Integer maxResults){

		if(firstResult == null) {
			firstResult = 1;
		}

		if(maxResults == null) {
			firstResult = 10;
		}
		
		List<ExampleEntity> list = data.stream().filter((e)->{
			
			if(minID != null && e.getId() < minID) {
				return false;
			}

			if(maxID != null && e.getId() > maxID) {
				return false;
			}
			
			if(name != null && !e.getName().toLowerCase().contains(name.toLowerCase())) {
				return false;
			}
			
			if(gender != null && !e.getGender().toLowerCase().equals(gender.toLowerCase())) {
				return false;
			}
			
			return true;
		}).collect(Collectors.toList());

		int lastResult = firstResult + maxResults;
		
		return new EntityResult(
				list.size(),
				firstResult > list.size()? 
						Collections.EMPTY_LIST :
						list.subList(firstResult, lastResult > list.size()? list.size() : lastResult)				
		);
	}
	
	public void save(ExampleEntity e) {
		
		if(e == null) {
			throw new IllegalArgumentException("e");
		}
		
		if(e.getName() == null || e.getName().isEmpty()) {
			throw new NullPointerException("name");
		}

		if(e.getGender() == null || e.getGender().isEmpty()) {
			throw new NullPointerException("gender");
		}
		
		if(e.getId() <= 0) {
			e.setId(index++);
		}
		
		data.add(e);
	}

	public void delete(int id) {
		data.remove(new ExampleEntity(id, null, null));
	}
	
}
