let rec is_sublist (l : int list) (s : int list) : bool =
match l, s with
| [], _ -> true
| x :: xs, _ when x = List.hd s -> is_sublist xs (List.tl s)
| x :: xs, _ -> is_sublist xs s

let () =
  assert (is_sublist [1; 2; 3] [1; 2; 3]);
  assert (not (is_sublist [1; 2; 3] [2; 1]));
  assert (not (is_sublist [1; 2; 3] [4; 5; 6]));


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to check whether a list contains the given sublist or not. *)
