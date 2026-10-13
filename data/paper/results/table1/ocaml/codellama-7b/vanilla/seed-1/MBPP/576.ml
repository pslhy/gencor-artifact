let rec is_Sub_Array (a : int list) (b : int list) : bool =
match a, b with
| [], _ -> true
| x :: xs, _ when x = b.[0] -> is_Sub_Array (xs, b)
| _, [] -> false
| _, _ :: ys -> is_Sub_Array (a, ys)


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to check whether a list is sublist of another or not. *)
