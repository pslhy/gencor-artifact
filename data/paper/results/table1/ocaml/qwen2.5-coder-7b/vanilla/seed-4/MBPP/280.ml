let rec sequential_search (dlist : int list) (item : int) :  bool * int = 
  match dlist with
  | [] -> (false, -1)
  | hd :: tl -> if item = hd then (true, 0) else match sequential_search tl item with
    | (false, -1) -> (false, -1)
    | (true, idx) -> (true, idx + 1)


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function that takes in a list and element and returns a tuple containing a boolean that indicates if the element is in the list and the index position of the element (or -1 if the element is not found). *)
