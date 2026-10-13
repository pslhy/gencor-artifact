let rec max_element (l : int list) : int =
  match l with
  | [] -> failwith "Empty list"
  | [x] -> x
  | x :: (y :: _ as ys) ->
    let mx = max_element ys in
    if x > mx then x else mx
;;


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Return maximum element in the list. *)
(*     >>> max_element [1; 2; 3] *)
(*     3 *)
(*     >>> max_element [5; 3; (-5); 2; (-3); 3; 9; 0; 123; 1; (-10)] *)
(*     123 *)
