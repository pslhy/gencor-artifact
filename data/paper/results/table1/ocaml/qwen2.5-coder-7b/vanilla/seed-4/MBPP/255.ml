let rec combinations_colors (l : string list) (n : int) : string list list = 
  if n = 0 then [ [] ] else
    List.fold_left (fun acc ele -> 
        List.map (fun xs -> ele :: xs) acc @ combinations_colors l (n - 1)) 
      [] l


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function that takes in a list and length n, and generates all combinations (with repetition) of the elements of the list and returns a list with a list for each combination. *)
