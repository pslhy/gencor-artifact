let rec find_even_pair (a : int list) : int = 
    match a with 
    | head :: tail -> 
    (match tail with 
    |[] -> head 
    | xs -> 
         if(List.hd xs) xor (List.tl xs) = 0 then 
             1 + find_even_pair(List.tl xs)
         else 
             0 
         
     )
    | [] -> 0
    in find_even_pair(a)


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function that counts the number of pairs of integers in a list that xor to an even number. *)
