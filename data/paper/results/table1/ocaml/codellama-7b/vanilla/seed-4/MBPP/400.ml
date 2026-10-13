let rec extract_freq (test_list :  (int * int) list) : int = 
    match(test_list) with
    | nil  ->  0
    | a::b::[] ->  1
    | a::b:: c ->  if(a=c) then (extract_freq b) else (extract_freq c)

And 

let recursion_test = [(3,2);(3,2);(3,2);(1,4)];;
let result =  extract_freq(recursion_test);;


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to extract the number of unique tuples in the given list. *)
