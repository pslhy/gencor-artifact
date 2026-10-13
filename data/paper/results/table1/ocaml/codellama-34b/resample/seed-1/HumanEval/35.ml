(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Return maximum element in the list. *)
(*     >>> max_element [1; 2; 3] *)
(*     3 *)
(*     >>> max_element [5; 3; (-5); 2; (-3); 3; 9; 0; 123; 1; (-10)] *)
(*     123 *)
let rec max_element (l : int list) : int =
    match l with
    | [] -> raise (Failure "Empty list")
    | [x] -> x
    | x :: y :: rest -> max_element (y :: rest)

