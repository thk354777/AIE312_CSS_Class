# create a new Class, User, that has the following attributes:
# - name
# - email
# - password

class User
    attr_reader :name, :email, :password, :shelter
    attr_accessor :name, :email, :password, :shelter
    def initialize(name, email, password)
        @name = name
        @email = email
        @password = password
        @room = []
    end

    def enter_room(room)
        room.shelter = self
        # @room << room
    end
end

user = User.new("peet", "@hot", "123")

puts user.name

# create a new Class, Room, that has the following attributes:
# - name
# - description
# - users

class Room
    attr_reader :name, :description, :user
    attr_accessor :name, :description, :user
    def initialize(name, description, users)
        @name = name
        @description = description
        @users = users
    end

    def enter_room(room)
        @room = room
        puts "I've changed my room to #{@room}."
    end

    # def broadcast(message)
    #     @users.each do |user|
    #     puts "Broadcasting message to #{user.name}: #{message}"
    # end
end

room_general = Room.new("general", "for sleep", user)


# create a new Class, Message, that has the following attributes:
# - user
# - room
# - content

class Message
    attr_reader :user, :room, :content
    attr_accessor :user, :room, :content

    def initialize(user, room, content)
        @user = user
        @room = room
        @content = content
    end

    def send_message(room, massage)
        puts "I send a message to a #{room}: #{massage}"
    end


end

user = Message.new("peet", 340, "travel")


# add a method to user so, user can enter to a room
# user.enter_room(room)
room_general.enter_room(321)

# user.shelter = room_general
# user.shelter

# user.enter_room(999)

# add a method to user so, user can send a message to a room
# user.send_message(room, message)
# user.ackowledge_message(room, message)

user.send_message(340, "hello")

# add a method to a room, so it can broadcast a message to all users
# room.broadcast(message)





