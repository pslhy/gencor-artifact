(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Return sorted unique common elements for two lists. *)
(*     >>> common [1; 4; 3; 34; 653; 2; 5] [5; 7; 1; 5; 9; 653; 121] *)
(*     [1; 5; 653] *)
(*     >>> common [5; 3; 2; 8] [3; 2] *)
(*     [2; 3] *)
let rec common (l1 : int list) (l2 : int list) : int list =
  match (l1, l2) with
  | (x :: xs, y :: ys) ->
      if x = y then
        x :: common xs ys
      else if x < y then
        common xs (y :: ys)
      else
        common (x :: xs) ys
  | (_, []) ->
      []
  | ([], _) ->
      []
  in

let () =
  Printf.printf "Common elements: %s\n" (String.concat ", " (common [1; 4; 3; 34; 653; 2; 5] [5; 7; 1; 5; 9; 653; 121]));
  Printf.printf "Common elements: %s\n" (String.concat ", " (common [5; 3; 2; 8] [3; 2]));
  ()

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:20:1: Syntax error *)
(*     Please regenerate the code, taking these errors into account. *)
let rec common (l1 : int list) (l2 : int list) : int list =
  match (l1, l2) with
  | (x :: xs, y :: ys) when x = y -> x :: common xs ys
  | (_, []) -> []
  | ([], _) -> []

