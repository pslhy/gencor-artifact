let rec trim_tuple (test_list : int list list) (k : int) : int list list =
  match test_list with
  | [] -> []
  | [x] -> [trim x k]
  | x :: y :: xs -> trim_tuple (x :: trim y k :: xs) k

and trim (lst : int list) (k : int) : int list =
  let n = if k < 0 then k * -1 else k in
  let rec aux (lst : int list) (i : int) : int list =
    match lst with
    | [] when i <= 0 -> []
    | [] when i > 0 -> lst
    | x :: xs -> aux xs (i + 1) @ [x]
  in
  aux lst n


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to trim each list by k in the given lists. *)
