let rec get_positive (l : int list) : int list =
  match l with
  | [] -> []
  | x :: xs -> if x > 0 then x :: get_positive xs else get_positive xs

let get_positive (l : int list) : int list =
  List.filter (fun x -> x > 0) l


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Return only positive numbers in the list. *)
(*     >>> get_positive [(-1); 2; (-4); 5; 6] *)
(*     [2; 5; 6] *)
(*     >>> get_positive [5; 3; (-5); 2; (-3); 3; 9; 0; 123; 1; (-10)] *)
(*     [5; 3; 2; 3; 9; 123; 1] *)
