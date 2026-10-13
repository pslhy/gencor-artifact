let rec find_first_occurrence (a : int list) (x : int) : int =
  match a with
  | [] -> -1
  | h :: _ when h = x -> 0
  | h :: _ when h > x -> -1
  | h :: t ->
     let rest = find_first_occurrence t x in
     if rest = -1 then -1 else 1 + rest


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find the index of the first occurrence of a given number in a sorted list. *)
