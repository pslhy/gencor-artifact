let rec remove_duplicates (numbers : int list) : int list = 
  let rec helper seen rest = match rest with
    | [] -> List.rev seen
    | x::xs -> 
        if List.mem x seen then 
          helper seen xs
        else 
          helper (x::seen) xs
  in
  helper [] numbers


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     From a list of integers, remove all elements that occur more than once. *)
(*     Keep order of elements left the same as in the input. *)
(*     >>> remove_duplicates [1; 2; 3; 2; 4] *)
(*     [1; 3; 4] *)
