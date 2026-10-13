let rec unique (l : int list) : int list =
  match l with
  | [] -> []
  | x :: xs -> x :: (unique xs)

let sorted_unique (l : int list) : int list =
  List.sort compare l |> unique


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Return sorted unique elements in a list *)
(*     >>> unique [5; 3; 5; 2; 3; 3; 9; 0; 123] *)
(*     [0; 2; 3; 5; 9; 123] *)
