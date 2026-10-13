let rec find_first_occurrence (a : int list) (x : int) : int =
  match a with
  | [] -> -1
  | y::ys -> 
        if y = x then 0 else 
          match find_first_occurrence ys x with
          | -1 -> -1
          | n -> 1 + n


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find the index of the first occurrence of a given number in a sorted list. *)
