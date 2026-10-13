let rec sample_nam (sample_names : string list) : int = 
  let filter_and_sum = function
    | [] -> 0
    | x :: xs -> 
        if String.length x > 0 && Char.is_uppercase (String.get x 0) then
          String.length x + filter_and_sum xs
        else
          filter_and_sum xs
  in filter_and_sum sample_names


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to sum the length of the names of a given list of names after removing the names that start with a lowercase letter. *)
