require 'similar_text'

questions = [ "Can you answer my question?",
			"What is Invisible Inc.?",
			"Where can I see trailers and stuff?",
			"If I buy Invisible, Inc. will I get a DRM-free build?",
			"What platforms will Invisible, Inc. be available on?",
			"Is Invisible, Inc. coming to ?",
			"Will you be localizing the game for my country?",
			"Does Invisible Inc. support Steam Achievements?",
			"Does Invisible Inc. Console Edition support Trophies?",
			"Will there be multiplayer coming for Invisible-inc?",
			"What are Invisible, Inc.'s system requirements?" ]

answers = [ "Yes.\n",
			"In Invisible Inc., you are The Operator, and you will lead your team of elite spies to infiltrate the world's most secure complexes. Pick targets of opportunity, steal from the corporations, and upgrade your agents and programs in order to prepare for the final standoff. The world is different every time, and the corporations are constantly adjusting to topple your plans. Your choices matter, and if your agents expire, they're gone for good.\n",
			"Check out the official site here: https://www.kleientertainment.com/games/invisible-inc \n",
			"When you purchase Invisible Inc., from the Humble Store or from the official website, you will receive access to the Steam and DRM-free standalone versions of the game. (PC, Mac, Linux)\n",
			"Invisible, Inc. is available now on PC, Mac, Linux, and on PlayStation 4.\n",
			"Invisible, Inc. is already available on the following platforms: PC, Mac, Linux, and PS4. We're investigating additional platforms; however we haven't locked down solid plans on those yet. Follow us on Facebook and on Twitter for the latest news and updates on the game.\n",
			"As a smaller studio, we focused much of our resources developing Invisible Inc. exclusively in English. However, our community has created a huge selection of language packs on Steam Workshop based on demand for PC, Mac, and Linux.\n",
			"Yes it does - you'll be able to unlock 17 Steam achievements in Invisible Inc.\n",
			"Yes it does - you'll be able to unlock 23 trophies in Invisible, Inc: Console Edition.\n",
			"We do not have plans for multiplayer at this time.",
			"OS: Windows Vista/Windows 7/Windows 8 \nProcessor: 2.0+ GHz Dual Core or better\nMemory: 2 GB RAM\nGraphics: NVIDIA GeForce 8600 GT / ATI Radeon HD 2600 XT or greater \nDirectX: Version 9.0c \nHard Drive: 2 GB available space \nSound Card: 100% DirectX9.0c compatible sound card and drivers\n" ]
			
while true
	answered = false
	print "\nAsk a question!\n"
	q = gets.chomp
	
	if q == "Quit" or q == "quit" then return end
	
	for i in (0...questions.length)
		if q.similar(questions[i]) >= 65 then
			print "\n"
			print answers[i]
			answered = true
			break
		end
	end
	#print q.similar(questions[i])
	if answered == false then
		print "Sorry, I can't answer that.\n"
	end
end