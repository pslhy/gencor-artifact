let rec count_X (tup : int list) (x : int) : int = 
  let rec helper = function
    | [] -> 0
    | h::t -> if h = x then 1 + (helper t) else helper t
  in
  List.length (List.filter (fun a -> a = x) tup)


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function that takes in a tuple and an element and counts the occcurences of the element in the list. *)
