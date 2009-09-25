class ExtendEntry < ActiveRecord::Migration
  def self.up
    add_column :comments, :name, :string
    add_column :comments, :uri,  :string
    [{:author =>'admin',:title=>'main',:body=>'Главная'},
      {:author =>'admin',:title=>'about_us',:body =>'О нас'},
      {:author =>'admin',:title=>'contacts',:body =>'Контакты'},
      {:author =>'admin',:title=>'links',:body=>'Ссылки'}].each do |x|
      BlogEntry.create(x)
    end

  end

  def self.down
    remove_column :comments, :name
    remove_column :comments, :uri
  end
end
