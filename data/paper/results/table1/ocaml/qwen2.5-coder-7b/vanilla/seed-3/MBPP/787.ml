let rec text_match_three (text : string) : bool = 
  let rec helper (index : int) : bool = 
    if index >= String.length text then false
    else if text.[index] = 'a' then 
      let rec helper_twice (index_b : int) : bool = 
        if index_b >= String.length text then false
        else if text.[index_b] = 'b' then 
          if index_b + 1 >= String.length text then false
          else if text.[index_b + 1] = 'b' then 
            if index_b + 2 >= String.length text then false
            else if text.[index_b + 2] = 'b' then true
            else helper_twice (index_b + 3)
          else helper_twice (index_b + 1)
        else helper_twice (index_b + 1)
      in helper_twice (index + 1)
    else helper (index + 1)
  in helper 0


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function that matches a string that has an a followed by three 'b'. *)
