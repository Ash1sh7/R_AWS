class LoadData < ActiveRecord::Migration[6.1]
    def up
      # Create initial users.
      down
      msd = User.new(:username => "MS Dhoni")
      msd.save(:validate => false)
      ch = User.new(:username => "Chris Hemsworth")
      ch.save(:validate => false)
      rs = User.new(:username => "Rohit Sharma")
      rs.save(:validate => false)
      vk = User.new(:username => "Virat Kohli")
      vk.save(:validate => false)
      th = User.new(:username => "Tom Holland")
      th.save(:validate => false)


      # Create initial photos.
      photo1 = Photo.new(:user_id=>1, :date_time => "2022-02-01 10:44:23",
             :file_name => "msd.jpg")
      photo1.user = msd
      photo1.save(:validate => false)

      photo2 = Photo.new(:user_id=>1, :date_time => "2022-02-02 20:00:00",
             :file_name => "msd1.jpg")
      photo2.user = msd
      photo2.save(:validate => false)
      photo3 = Photo.new(:user_id=>1, :date_time => "2022-02-03 20:05:03",
             :file_name => "msd2.jpg")
      photo3.user = msd
      photo3.save(:validate => false)

      photo4 = Photo.new(:user_id=>2, :date_time => "2022-02-04 18:02:00",
             :file_name => "ch.jpg")
      photo4.user = ch
      photo4.save(:validate => false)
      photo5 = Photo.new(:user_id=>2, :date_time => "2022-02-05 17:30:00",
             :file_name => "ch1.jpg")
      photo5.user = ch
      photo5.save(:validate => false)

      photo6 = Photo.new(:user_id=>3, :date_time => "2022-02-06 16:02:49",
             :file_name => "rs.jpg")
      photo6.user = rs
      photo6.save(:validate => false)
      photo7 = Photo.new(:user_id=>3, :date_time => "2022-02-07 23:48:00",
             :file_name => "rs1.jpg")
      photo7.user = rs
      photo7.save(:validate => false)
      photo8 = Photo.new(:user_id=>4, :date_time => "2022-02-08 14:26:00",
             :file_name => "vk.jpg")
      photo8.user = vk
      photo8.save(:validate => false)

      photo9 = Photo.new(:user_id=>4, :date_time => "2022-02-09 09:02:00",
             :file_name => "vk1.jpg")
      photo9.user = vk
      photo9.save(:validate => false)
      photo10 = Photo.new(:user_id=>4, :date_time => "2022-02-10 09:03:00",
              :file_name => "vk2.jpg")
      photo10.user = vk
      photo10.save(:validate => false)


      photo11 = Photo.new(:user_id=>5, :date_time => "2022-02-11 09:16:32",
              :file_name => "th.jpg")
      photo11.user = th
      photo11.save(:validate => false)

      photo12 = Photo.new(:user_id=>5, :date_time => "2022-02-12 17:12:28",
              :file_name => "th1.jpg")
      photo12.user = th
      photo12.save(:validate => false)

# Create initial comments.
      comment = Comment.new(:user_id=>1, :photo_id=>1, :date_time => "2022-02-01 10:48:25",
                :comment_text => "Captain Cool")
      comment.user = vk
      comment.photo = photo1
      comment.save(:validate => false)

      comment = Comment.new(:user_id=>1, :photo_id=>1, :date_time => "2022-02-02 20:24:00",
                :comment_text => "Big Fan Mahi")
      comment.user = rs
      comment.photo = photo1
      comment.save(:validate => false)

      comment = Comment.new(:user_id=>1, :photo_id=>1, :date_time => "2022-02-02 23:48:25",
                :comment_text => "<b>Can I get an autograph?</b> ")
      comment.user = th
      comment.photo = photo1
      comment.save(:validate => false)

      comment = Comment.new(:user_id=>1, :photo_id=>2, :date_time => "2022-02-02 20:10:00",
                :comment_text => "Thala Dhoni")
      comment.user = rs
      comment.photo = photo2
      comment.save(:validate => false)

      comment = Comment.new(:user_id=>1, :photo_id=>3, :date_time => "2022-02-03 20:07:23",
                :comment_text => "Looking" +
                    "Good.")
      comment.user = vk
      comment.photo = photo3
      comment.save(:validate => false)

      comment = Comment.new(:user_id=>2, :photo_id=>4, :date_time => "2022-02-04 19:15:00",
                :comment_text => "Hey Chris! How are you doing?")
      comment.user = th
      comment.photo = photo4
      comment.save(:validate => false)
      comment = Comment.new(:user_id=>2, :photo_id=>5, :date_time => "2022-02-05 17:32:21",
                :comment_text => "AAA MY BOY.......")
      comment.user = rs
      comment.photo = photo5
      comment.save(:validate => false)

      comment = Comment.new(:user_id=>3, :photo_id=>6, :date_time => "2022-02-06 16:04:19",
                :comment_text => "We're off to a Rohit Sharma show")
      comment.user = msd
      comment.photo = photo6
      comment.save(:validate => false)

      comment = Comment.new(:user_id=>3, :photo_id=>7, :date_time => "2022-02-07 23:49:20",
                :comment_text => "Hey Hitman")
      comment.user = vk
      comment.photo = photo7
      comment.save(:validate => false)
      comment = Comment.new(:user_id=>4, :photo_id=>8, :date_time => "2022-02-08 14:27:00",
                :comment_text => "To all my fans, I just want to say how I really enjoyed playing cricket.")
      comment.user = vk
      comment.photo = photo8
      comment.save(:validate => false)

      comment = Comment.new(:user_id=>5, :photo_id=>12, :date_time => "2022-02-12 17:14:17",
                :comment_text => "I'm going to be watching Spiderman:No Way Home movie today!")
      comment.user = rs
      comment.photo = photo12
      comment.save(:validate => false)

    end

    def down
      Comment.delete_all
      Photo.delete_all
      User.delete_all
    end
  end
