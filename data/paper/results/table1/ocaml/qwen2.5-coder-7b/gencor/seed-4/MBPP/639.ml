
let rec sample_nam (sample_names : string list) : int = 
  let filter_and_sum = function
    | [] -> 0
    | x :: xs -> 
        if String.length x > 0 && Char.uppercase_ascii x.[0] = x.[0] then
          String.length x + sample_nam xs
        else
          sample_nam xs
  in
  filter_and_sum sample_names



(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to sum the length of the names of a given list of names after removing the names that start with a lowercase letter. *)
