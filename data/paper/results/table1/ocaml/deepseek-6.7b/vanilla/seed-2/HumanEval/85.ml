let rec add (lst : int list) : int =
  match lst with
  | [] -> 0
  | h :: _ :: t -> h + add t
  | _ -> failwith "Impossible"

let rec keepOddIndices (lst : 'a list) : 'a list =
  match lst with
  | [] -> []
  | _ :: t -> t :: keepOddIndices t

let rec removeEven (lst : int list) : int list =
  match lst with
  | [] -> []
  | h :: t when h mod 2 = 0 -> removeEven t
  | h :: t -> h :: removeEven t

let solve (lst : int list) : int =
  add (removeEven (keepOddIndices lst))


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Given a non-empty list of integers lst. add the even elements that are at odd indices.. *)
(*     Examples: *)
(*     >>> add [4; 2; 6; 7] *)
(*     2 *)
