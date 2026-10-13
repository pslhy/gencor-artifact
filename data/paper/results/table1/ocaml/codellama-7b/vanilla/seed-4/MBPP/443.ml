let rec largest_neg (list1 : int list) : int = 
    match list1 with 
      head :: tail -> 
          (match head with 
          | x when head > 0 -> largest_neg tail 
          | x when head < 0 -> max head (largest_neg tail) 
          | _ -> largest_neg tail 
          ) 
      | [] -> 0
  in largest_neg


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to find the largest negative number from the given list. *)
