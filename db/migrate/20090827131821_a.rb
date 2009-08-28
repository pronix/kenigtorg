class A < ActiveRecord::Migration
  def self.up
		t = Taxonomy.new(
			:name =>'group'
		)
		t.save
		
		if t.save
			taxonomy_id = t.id
			
			txn_group = Taxon.new(
				:taxonomy_id =>taxonomy_id,
				:name =>'group',
				:permalink =>'group/'
			)
			
			txn_group.save
			
			if txn_group.save
				 cat_school = Taxon.new(
					:taxonomy_id =>taxonomy_id,
					:parent_id =>txn_group.id,
					:name =>'Оборудование для школы',
					:permalink =>"group/"+'Оборудование для школы'.to_url,
					:position =>'0'
				)
				
				if cat_school.save
					school_cats = Taxon.create([
					{:taxonomy_id =>taxonomy_id ,:parent_id =>cat_school.id,:name =>'Кабинет Математики',:permalink =>'group/oborudovaniie-dlia-shkoly/'+'Кабинет Математики'.to_url,:position =>'1'},
					{:taxonomy_id =>taxonomy_id ,:parent_id =>cat_school.id,:name =>'Кабинет Истории',:permalink =>'group/oborudovaniie-dlia-shkoly/'+'Кабинет Истории'.to_url,:position =>'2'},
					{:taxonomy_id =>taxonomy_id ,:parent_id =>cat_school.id,:name =>'Кабинет Физики',:permalink =>'group/oborudovaniie-dlia-shkoly/'+'Кабинет Физики'.to_url,:position =>'3'},
					{:taxonomy_id =>taxonomy_id ,:parent_id =>cat_school.id,:name =>'Кабинет Биологии',:permalink =>'group/oborudovaniie-dlia-shkoly/'+'Кабинет Биологии'.to_url,:position =>'4'},
					{:taxonomy_id =>taxonomy_id ,:parent_id =>cat_school.id,:name =>'Кабинет Географии',:permalink =>'group/oborudovaniie-dlia-shkoly/'+'Кабинет Географии'.to_url,:position =>'5'},
					{:taxonomy_id =>taxonomy_id ,:parent_id =>cat_school.id,:name =>'Кабинет Химии',:permalink =>'group/oborudovaniie-dlia-shkoly/'+'Кабинет Химии'.to_url,:position =>'6'},
					{:taxonomy_id =>taxonomy_id ,:parent_id =>cat_school.id,:name =>'Кабинет Информатики',:permalink =>'group/oborudovaniie-dlia-shkoly/'+'Кабинет Информатики'.to_url,:position =>'7'},
					{:taxonomy_id =>taxonomy_id ,:parent_id =>cat_school.id,:name =>'Кабинет Астрономии',:permalink =>'group/oborudovaniie-dlia-shkoly/'+'Кабинет Астрономии'.to_url,:position =>'8'},
					{:taxonomy_id =>taxonomy_id ,:parent_id =>cat_school.id,:name =>'Кабинет Иностранного языка',:permalink =>'group/oborudovaniie-dlia-shkoly/'+'Кабинет Иностранного языка'.to_url,:position =>'9'},
					{:taxonomy_id =>taxonomy_id ,:parent_id =>cat_school.id,:name =>'Кабинет Труда',:permalink =>'group/oborudovaniie-dlia-shkoly/'+'Кабинет Труда'.to_url,:position =>'10'},
					{:taxonomy_id =>taxonomy_id ,:parent_id =>cat_school.id,:name =>'Кабинет Музыки',:permalink =>'group/oborudovaniie-dlia-shkoly/'+'Кабинет Музыки'.to_url,:position =>'11'},
					{:taxonomy_id =>taxonomy_id ,:parent_id =>cat_school.id,:name =>'Кабинет ОБЖ',:permalink =>'group/oborudovaniie-dlia-shkoly/'+'Кабинет ОБЖ'.to_url,:position =>'12'},
					{:taxonomy_id =>taxonomy_id ,:parent_id =>cat_school.id,:name =>'Кабинет Начальной школы',:permalink =>'group/oborudovaniie-dlia-shkoly/'+'Кабинет Начальной школы'.to_url,:position =>'13'},
					{:taxonomy_id =>taxonomy_id ,:parent_id =>cat_school.id,:name =>'Кабинет Медицинский',:permalink =>'group/oborudovaniie-dlia-shkoly/'+'Кабинет Медицинский'.to_url,:position =>'14'},
					{:taxonomy_id =>taxonomy_id ,:parent_id =>cat_school.id,:name =>'Автокласс',:permalink =>'group/oborudovaniie-dlia-shkoly/'+'Автокласс'.to_url,:position =>'15'},
					{:taxonomy_id =>taxonomy_id ,:parent_id =>cat_school.id,:name =>'Столовая',:permalink =>'group/oborudovaniie-dlia-shkoly/'+'Столовая'.to_url,:position =>'16'},
					{:taxonomy_id =>taxonomy_id ,:parent_id =>cat_school.id,:name =>'Гардероб',:permalink =>'group/oborudovaniie-dlia-shkoly/'+'Гардероб'.to_url,:position =>'17'},
					{:taxonomy_id =>taxonomy_id ,:parent_id =>cat_school.id,:name =>'Школьная мебель',:permalink =>'group/oborudovaniie-dlia-shkoly/'+'Школьная мебель'.to_url,:position =>'18'},
					{:taxonomy_id =>taxonomy_id ,:parent_id =>cat_school.id,:name =>'Спортивное оборудование',:permalink =>'group/oborudovaniie-dlia-shkoly/'+'Спортивное оборудование'.to_url,:position =>'19'},
					{:taxonomy_id =>taxonomy_id ,:parent_id =>cat_school.id,:name =>'Специальное оборудование',:permalink =>'group/oborudovaniie-dlia-shkoly/'+'Специальное оборудование'.to_url,:position =>'20'}
					])
					
					if school_cats
						cat_kg = Taxon.new(
							:taxonomy_id =>taxonomy_id,
							:parent_id =>txn_group.id,
							:name =>'Оборудование для детского сада',
							:permalink =>"group/"+'Оборудование для детского сада'.to_url,
							:position =>'0'
						)
						
						if cat_kg.save
							kg_cats = Taxon.create([
								{:taxonomy_id =>taxonomy_id ,:parent_id =>cat_kg.id,:name =>'Медицинский кабинет',:permalink =>'group/'+'Оборудование для детского сада'.to_url+'/'+'Медицинский кабинет'.to_url,:position =>'1'},
								{:taxonomy_id =>taxonomy_id ,:parent_id =>cat_kg.id,:name =>'Информационные стенды',:permalink =>'group/'+'Оборудование для детского сада'.to_url+'/'+'Информационные стенды'.to_url,:position =>'2'},
								{:taxonomy_id =>taxonomy_id ,:parent_id =>cat_kg.id,:name =>'Мебель',:permalink =>'group/'+'Оборудование для детского сада'.to_url+'/'+'Мебель'.to_url,:position =>'3'},
								{:taxonomy_id =>taxonomy_id ,:parent_id =>cat_kg.id,:name =>'Сенсорная комната',:permalink =>'group/'+'Оборудование для детского сада'.to_url+'/'+'енсорная комната'.to_url,:position =>'4'}
							])
							
							if kg_cats
								cat_hschool = Taxon.new(
									:taxonomy_id =>taxonomy_id,
									:parent_id =>txn_group.id,
									:name =>'Оборудование для ВУЗа и ПТУ',
									:permalink =>"group/oborudovaniie-dlia-vuza-i-ptu",
									:position =>'0'
								)
								
								if cat_hschool.save
									hschool_cats = Taxon.create([
										{:taxonomy_id =>taxonomy_id ,:parent_id =>cat_hschool.id,:name =>'Кабинет Математики',:permalink =>'group/oborudovaniie-dlia-vuza-i-ptu/'+'Кабинет Математики'.to_url,:position =>'1'},
										{:taxonomy_id =>taxonomy_id ,:parent_id =>cat_hschool.id,:name =>'Кабинет Истории',:permalink =>'group/oborudovaniie-dlia-vuza-i-ptu/'+'Кабинет Истории'.to_url,:position =>'2'},
										{:taxonomy_id =>taxonomy_id ,:parent_id =>cat_hschool.id,:name =>'Кабинет Физики',:permalink =>'group/oborudovaniie-dlia-vuza-i-ptu/'+'Кабинет Физики'.to_url,:position =>'3'},
										{:taxonomy_id =>taxonomy_id ,:parent_id =>cat_hschool.id,:name =>'Кабинет Биологии',:permalink =>'group/oborudovaniie-dlia-vuza-i-ptu/'+'Кабинет Биологии'.to_url,:position =>'4'},
										{:taxonomy_id =>taxonomy_id ,:parent_id =>cat_hschool.id,:name =>'Кабинет Географии',:permalink =>'group/oborudovaniie-dlia-vuza-i-ptu/'+'Кабинет Географии'.to_url,:position =>'5'},
										{:taxonomy_id =>taxonomy_id ,:parent_id =>cat_hschool.id,:name =>'Кабинет Химии',:permalink =>'group/oborudovaniie-dlia-vuza-i-ptu/'+'Кабинет Химии'.to_url,:position =>'6'},
										{:taxonomy_id =>taxonomy_id ,:parent_id =>cat_hschool.id,:name =>'Кабинет Информатики',:permalink =>'group/oborudovaniie-dlia-vuza-i-ptu/'+'Кабинет Информатики'.to_url,:position =>'7'},
										{:taxonomy_id =>taxonomy_id ,:parent_id =>cat_hschool.id,:name =>'Кабинет Астрономии',:permalink =>'group/oborudovaniie-dlia-vuza-i-ptu/'+'Кабинет Астрономии'.to_url,:position =>'8'},
										{:taxonomy_id =>taxonomy_id ,:parent_id =>cat_hschool.id,:name =>'Кабинет Иностранного языка',:permalink =>'group/oborudovaniie-dlia-vuza-i-ptu/'+'Кабинет Иностранного языка'.to_url,:position =>'9'},
										{:taxonomy_id =>taxonomy_id ,:parent_id =>cat_hschool.id,:name =>'Кабинет Труда',:permalink =>'group/oborudovaniie-dlia-vuza-i-ptu/'+'Кабинет Труда'.to_url,:position =>'10'},
										{:taxonomy_id =>taxonomy_id ,:parent_id =>cat_hschool.id,:name =>'Кабинет Музыки',:permalink =>'group/oborudovaniie-dlia-vuza-i-ptu/'+'Кабинет Музыки'.to_url,:position =>'11'},
										{:taxonomy_id =>taxonomy_id ,:parent_id =>cat_hschool.id,:name =>'Кабинет ОБЖ',:permalink =>'group/oborudovaniie-dlia-vuza-i-ptu/'+'Кабинет ОБЖ'.to_url,:position =>'12'},
										{:taxonomy_id =>taxonomy_id ,:parent_id =>cat_hschool.id,:name =>'Кабинет Начальной школы',:permalink =>'group/oborudovaniie-dlia-vuza-i-ptu/'+'Кабинет Начальной школы'.to_url,:position =>'13'},
										{:taxonomy_id =>taxonomy_id ,:parent_id =>cat_hschool.id,:name =>'Кабинет Медицинский',:permalink =>'group/oborudovaniie-dlia-vuza-i-ptu/'+'Кабинет Медицинский'.to_url,:position =>'14'},
										{:taxonomy_id =>taxonomy_id ,:parent_id =>cat_hschool.id,:name =>'Автокласс',:permalink =>'group/oborudovaniie-dlia-vuza-i-ptu/'+'Автокласс'.to_url,:position =>'15'},
										{:taxonomy_id =>taxonomy_id ,:parent_id =>cat_hschool.id,:name =>'Столовая',:permalink =>'group/oborudovaniie-dlia-vuza-i-ptu/'+'Столовая'.to_url,:position =>'16'},
										{:taxonomy_id =>taxonomy_id ,:parent_id =>cat_hschool.id,:name =>'Гардероб',:permalink =>'group/oborudovaniie-dlia-vuza-i-ptu/'+'Гардероб'.to_url,:position =>'17'},
										{:taxonomy_id =>taxonomy_id ,:parent_id =>cat_hschool.id,:name =>'Школьная мебель',:permalink =>'group/oborudovaniie-dlia-vuza-i-ptu/'+'Школьная мебель'.to_url,:position =>'18'},
										{:taxonomy_id =>taxonomy_id ,:parent_id =>cat_hschool.id,:name =>'Спортивное оборудование',:permalink =>'group/oborudovaniie-dlia-vuza-i-ptu/'+'Спортивное оборудование'.to_url,:position =>'19'},
										{:taxonomy_id =>taxonomy_id ,:parent_id =>cat_hschool.id,:name =>'Специальное оборудование',:permalink =>'group/oborudovaniie-dlia-vuza-i-ptu/'+'Специальное оборудование'.to_url,:position =>'20'}
										])
										
										if hschool_cats
											#~ be = BlogEntry.create([
												#~ {:author =>'admin',:title=>'main',:body=>'Главная'},
												#~ {:author =>'admin',:title=>'about_us',:body =>'О нас'},
												#~ {:author =>'admin',:title=>'contacts',:body =>:'Контакты'},
												#~ {:author =>'admin',:title=>'links',:body=>'Ссылки'}
											#~ ]);
											#~ execute("INSERT INTO 'blog_entries' VALUES(NULL,'admin','main','главная')");
										end	
									
								end #cat_hschool.save
							
							end	#kg_cats.save				
							
							
						end	#cat_kg.save
					end	#school_cats
				end #cat_school.save
				
				
				
				
				
			end	
				
				
				
			#~ end #txn_group.save
			
			
		end #if t.save
		
		
  end

  def self.down
		t = Taxonomy.find_by_name('group')
		t.destroy
  end
end
