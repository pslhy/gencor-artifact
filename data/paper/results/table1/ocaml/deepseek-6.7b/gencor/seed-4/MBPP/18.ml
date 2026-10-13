
let rec remove_dirty_chars (string : string) (second_string : string) : string =
  match string with
  | "" -> ""
  | _ -> if String.sub(pred,tan.


		([[2, 3], [5,6]],[1,1])= [2,2]

		(4,5,6,7,8)[0][0]= 4
		(4,5,6,7,8)[3]=7
		
		6 decr 

		abs(-4)=4
		abs(10)=10
		abs(0)=0

		min([2,3,1])=1
		min([10,20,30])=10
		min([-15,-10,-5])= -15

		max([2,3,1])=3
		max([10,20,30])=30
		max([-15,-10,-5])= -5

		snd 

		Gc.create_alarm("ALARM_PARAMS_NAME") # do_at_exit 

               ([1,2,3,4],0)=1
               ([1,2,3,4],1)=2
               ([1,2,3,4],2)=3
               ([1,2,3,4],3)=4
               ([1,2,3,4],4)=Error

               (['a', 'b', 'c', 'd'], 0)= 'a'
               (['a', 'b', 'c', 'd'], 1)= 'b'
               (['a', 'b', 'c', 'd'], 2)= 'c'
               (['a', 'b', 'c', 'd'], 3)= 'd'
               (['a', 'b', 'c', 'd'], 4)= Error

               ([1,2,3,4],-1)= Error
               ([1,2,3,4],4)= Error

               (['a', 'b', 'c'], -1)= Error
               (['a', 'b', 'c'], 3)= Error

               ([], 0)= Error                            - 

               "ABC"[1] = "B"
               "ABC"[3] = Error                - 

               ("a", "b", "c")[0] = "a"
               ("a", "b", "c")[2] = "c"
               ("a", "b", "c")[3] = Error              - 

               (1,2,3,4,5)[2] = 3  
               (1,2,3,4,5)[5] = Error               - 

               ([1],[2],[3])[0][0]=1
               ([[1],[2],[3]][2][0]=3
               ([[1],[2],[3]][3]= Error                - 

               ([1,2,3], [4,5,6], [7,8,9])[0][0]=1
               ([1,2,3], [4,5,6], [7,8,9])[2][2]=9
               ([1,2,3], [4,5,6], [7,8,9])[3]=Error               - 

               ([[1, 2], [3, 4]], [5,6], [7,8])[0][0]=1
               ([[1, 2], [3, 4]], [5,6], [7,8])[1][1][1]=4 
               ([[1, 2], [3, 4]], [5,6], [7,8])[3]= Error              - 

               ([1, 2, 3], [4, 5], [6, 7, 8])[4]= Error             - 

               ([[1, 2, 3], [4, 5, 6]], [7, 8], [9, 10, 11])[1][1][1]=6
               ([[1, 2, 3], [4, 5, 6]], [7, 8], [9, 10, 11])[2][0]=9 
               ([[1, 2, 3], [4, 5, 6]], [7, 8], [9, 10, 11])[3]= Error             - 

               ([[1,2,3,4],[5,6,7,8]],[9,10,11,12],[13,14,15,16])[1][3]=8
               ([[1,2,3,4],[5,6,7,8]],[9,10,11,12],[13,14,15,16])[2][3]=16
               ([[1,2,3,4],[5,6,7,8]],[9,10,11,12],[13,14,15,16])[3][3]= Error             - 

               Error (if input, invalid_arg. 

		(3, 4)=7
		(10, 20)=30
		(-5, 5)=0
		('a', 'b')=Error:= asr

(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to remove characters from the first string which are present in the second string. *)
