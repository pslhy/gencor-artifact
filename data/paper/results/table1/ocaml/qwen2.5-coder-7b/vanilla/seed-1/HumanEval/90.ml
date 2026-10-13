let rec next_smallest (lst : int list) : int option = 
  let rec find_two_smallest lst min1 min2 = 
    match lst with
    | [] -> (min1, min2)
    | x::xs -> 
      if x < min1 then find_two_smallest xs x min1
      else if x < min2 then find_two_smallest xs min1 x
      else find_two_smallest xs min1 min2
  in
  match lst with
  | [] -> None
  | x::xs -> 
    let (smallest, second_smallest) = find_two_smallest xs x max_int in
    if second_smallest = max_int then None else Some(second_smallest)


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
