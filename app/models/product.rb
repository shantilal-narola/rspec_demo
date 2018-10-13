class Product < ActiveRecord::Base
	  has_attached_file :image ,default_url: "/images/:style/missing.png"
    

  	validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/ 

  	has_attached_file :video ,default_url: "/images/:style/missing.png"
  	validates_attachment_content_type :video,
                                    content_type: /\Avideo\/.*\Z/,
                                    message: 'File must be of filetype .mp4'

    validates :name, :price, presence: :true
    
    has_many :items
   #Console code
   #p = Product.new(name: "test_final", price:456)
   #p.image = File.open("/Users/c224/Downloads/index1.jpg")
   #p.video = File.open("/Users/c224/Downloads/Sample320.mp4")
   #p.save
   
end
