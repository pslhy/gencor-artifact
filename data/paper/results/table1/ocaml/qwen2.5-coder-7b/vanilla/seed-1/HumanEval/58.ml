let rec common (l1 : int list) (l2 : int list) : int list = 
  let rec check_duplicates lst =
    match lst with
    | [] -> []
    | x::xs -> x :: (check_duplicates (List.filter (fun y -> y <> x) xs))
  in
  let rec find_commons l1 l2 =
    match (l1, l2) with
    | [], _ -> []
    | _, [] -> []
    | x::xs, y::ys when x = y -> x :: (find_commons xs ys)
    | x::xs, y::ys when x < y -> find_commons xs l2
    | x::xs, y::ys -> find_commons l1 ys
  in
  check_duplicates (find_commons l1 l2)


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
