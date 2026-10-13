let rec max_length (list1 : int list list) :  int * int list =
  let rec aux xList current_max current_max_length index =
    match xList with
    | [] -> (index, current_max)
    | h::t -> if List.length h > current_max_length
              then aux t (h) (List.length h) (index + 1)
              else aux t current_max current_max_length (index + 1)
  in
  aux list1 [] 0 0


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find the list of maximum length in a list of lists. *)
