def comb(a,b,c,d,e)
     background2="
        ---------------------------------
        |                               |
        |                               |","
        |                             (   )","
        |                               |","   
        |                             / | \\","
        |                               |","
        |                             / | \\","
        |                                     ","
        |                               
        |
        |__________________________________ "

     puts background2[0]
     puts background2[a]
     puts background2[b]
     puts background2[c]
     puts background2[d]
     puts background2[e]
     puts background2[6]
     puts background2[7]
end

def drw(score)
     if score==3
          comb(6,6,6,6,6)
     elsif score==2
          comb(1,6,6,6,6)
     elsif score==1
          comb(1,2,3,6,6)
     else
          comb(1,2,3,4,5)  
     end
end

# puts background2[0]
# puts background2[1]
# puts background2[2]
# puts background2[3]
# puts background2[4]
# puts background2[5]
# puts background2[6]   #imp
# puts background2[7]


# puts background2[0]
# puts background2[1]
# puts background2[6]
# puts background2[6]
# puts background2[4]
# puts background2[5]
# puts background2[6]
# puts background2[7]

puts "Welcome to the Game"
puts 
puts "Game Rules: "
puts " You have 5 questions in total. You need to answer atleast 3 questions correct else you will be hanged!!"
puts "The timeout for each question is 10 sec, if you have not answered it in the stipulated time, it will be taken as not answered."
puts "All the Best!"
puts

def see(ques,ans)
        i=0
        score=3
        while i<ques.size
           puts ques[i]
           p=0
           t=0
           results = select [STDIN], nil, nil, 10
           if !results
                t=1
                puts "not answered,TIMEOUT"
           else
                m=gets.chomp
           end
           if (m!=ans[i].chomp || t==1)
               puts "wrong"
               score=score-1
               drw(score)
               if score==0
                    break
               end
           else
               puts "Correct"
               drw(score)
           end
           i+=1
        end
        if score <=0
          puts "You lost the Game!"
          puts "Better luck next time"          
        else
          puts "Hurray! You won!"
          puts "Congratulations!"
        end
        puts "GAME OVER!"
end

ques=IO.readlines("q.txt")
ans=IO.readlines("a.txt")
see(ques,ans)
    