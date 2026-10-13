let rec sample_nam (sample_names : string list) : int = 
    (* Declare and initialize a variable to hold the sum of the lengths of the names *)
    let rec helper (sample : string) : int = 
        (* Base case: return 0 if the input is an empty list *)
        match sample with
        | [] -> 0 
        (* recursion step: add the length of the current name to the sum and recurse on the rest of the list *)
        | x :: xs -> String.length x + helper xs 
    in 
    (* Call the helper function on the input list *)
    helper sample_names


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to sum the length of the names of a given list of names after removing the names that start with a lowercase letter. *)
