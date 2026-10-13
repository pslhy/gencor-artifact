let rec sort_counter (dict1 : (string * int) list) :  (string * int) list =
  match dict1 with
  | [] -> []
  | (x,y) :: tl -> min_pair_counter (sort_counter tl) (x,y)

and min_pair_counter (dict2 : (string * int) list) ((word1,count1) : string * int) : (string * int) list =
  match dict2 with
  | [] -> [(word1,count1)]
  | (word2,count2) :: tl -> if count1 <= count2 then (word1,count1) :: dict2 else (word2,count2) :: min_pair_counter tl (word1,count1)


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to sort an association list by value. *)
