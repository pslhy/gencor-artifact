let rec find_first_occurrence (a : int list) (x : int) : int =
  match a with
  | [] -> -1
  | h :: _ -> if h = x then 0 else 1 + find_first_occurrence (List.tl a) x


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find the index of the first occurrence of a given number in a sorted list. *)
