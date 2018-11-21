class Contact < ApplicationRecord
    has_many :notes, dependent: :destroy
    has_one :address, dependent: :destroy
    # associations
    #belongs_to
    #has_many
    #has_one

    #has_many :through
    #has_one :through
    #dependent
        #

    # validations
        # confirmation - it sould have exact a certain thing ()
        
        # inclusion - it includes something
        # length - have a certain size
        # numericality - make sure the input is a number
        # presence - makes sure the field is filled out
            validates :first_name, :last_name, :age, :phone, :email, :friend, presence: true
        # uniqueness - accept uniqueness
            validates :email, uniqueness: true

    #options
        # allow_nil
        # allow_blank
        # message
        # on
        validates :email, uniqueness: true, on: :create

    #callback
    #calls a method during a certain action
        #before_validation
        #after_validation
        #before_save
        #after_save
        #around_save
        #before_create
        #after_create
        #around_create

        # before_save :encrypt_cc

        # private
        #     def encrypt_cc
        #         self.card_number = bcrypt(self.card_number)
        #     end

        # end

        # serialize
        # lets us have more than one value for a column, in an array
        # class Person < ActiveRecord::before_save
        #     belongs_to :account
        #     serialize :hobbies, Array
        # end
        # Person.create(hobbies: ['kitchen', 'sports', 'chess'])
        
    #Model methods
        # Class
            # class Person < ActiveRecord::before_save
            #     def self.by_first_name
            #         order(:first_name)
            #     end
            # end
            # Person.by_first_name

        # instance

end
