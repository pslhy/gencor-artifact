let rec next_smallest (lst : int list) : int option =
  let rec aux (l : int list) (n : int) : int option =
    match l with
    | [] -> Some(n)
    | h :: t when h < n -> Some(h)
    | _ :: t -> aux t n
  in
  match lst with
  | [] -> Some(None)
  | h :: t -> aux t h


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     You are given a list of integers. *)
(*     Write a function next_smallest() that returns the 2nd smallest element of the list. *)
(*     Return None if there is no such element. *)
(*     >>> next_smallest [1; 2; 3; 4; 5] *)
(*     Some(2) *)
(*     >>> next_smallest [5; 1; 4; 3; 2] *)
(*     Some(2) *)
(*     >>> next_smallest [] *)
(*     Some(None) *)
(*     >>> next_smallest [1; 1] *)
(*     Some(None) *)
