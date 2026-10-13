let rec max_Abs_Diff (arr : int list) : int = 
  let rec helper max min = function
    | [] -> max - min
    | x :: xs -> 
        let new_max = max x max in
        let new_min = min x min in
        helper new_max new_min xs
  in
  match arr with
  | x :: xs -> helper x x xs
  | [] -> failwith "List is empty"


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to find the maximum difference between any two elements in a given list. *)
