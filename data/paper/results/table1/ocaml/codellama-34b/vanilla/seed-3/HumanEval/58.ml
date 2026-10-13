let rec common (l1 : int list) (l2 : int list) : int list =
  let rec remove_duplicates l =
    match l with
    | [] -> []
    | x :: xs -> x :: remove_duplicates (List.filter (fun y -> y != x) xs)
  in
  match l1, l2 with
  | [], _ | _, [] -> []
  | x :: xs, y :: ys ->
      if x = y then x :: common xs ys
      else if x < y then common xs (y :: ys)
      else common (x :: xs) ys
  | _ -> failwith "invalid input"


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Return sorted unique common elements for two lists. *)
(*     >>> common [1; 4; 3; 34; 653; 2; 5] [5; 7; 1; 5; 9; 653; 121] *)
(*     [1; 5; 653] *)
(*     >>> common [5; 3; 2; 8] [3; 2] *)
(*     [2; 3] *)
