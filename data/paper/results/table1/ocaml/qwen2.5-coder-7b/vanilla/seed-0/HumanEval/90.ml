let rec next_smallest (lst : int list) : int option = 
  let rec helper lst smallest second_smallest = 
    match lst with
    | [] -> second_smallest
    | x :: xs -> 
        if x < smallest then
          helper xs x smallest
        else if x < second_smallest && x <> smallest then
          helper xs smallest x
        else
          helper xs smallest second_smallest
  in
  match lst with
  | [] -> Some None
  | [_] -> Some None
  | _ -> Some (helper lst max_int max_int)



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
