
let rec trim_tuple (test_list : int list list) (k : int) : int list list =
  match test_list with
  | [] -> []
  | head :: tail -> (List.rev (List.rev_map (fun x -> List.tl @@ List.rev @@ List.rev_map (fun y -> if y >= k then y - k else 0) x)) @ List.rev (List.rev_map (fun x -> List.tl @@ List.rev (List.rev_map (fun y -> if y >= k then y - k else 0) x)) tail))@ [(List.map (fun x -> if x >= k then x - k else 0) head)]

(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to trim each list by k in the given lists. *)
