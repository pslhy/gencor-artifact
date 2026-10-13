let rec sort_counter (dict1 : (string * int) list) :  (string * int) list = 
 let aux acc (k,v) = 
   let rec insert list = 
     match list with
       [] -> [(k,v)]
     | (x,y)::xs -> if v < y then (k,v)::list else (x,y)::(insert xs) in
   insert acc
 in 
 fold_left aux [] dict1


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to sort an association list by value. *)
