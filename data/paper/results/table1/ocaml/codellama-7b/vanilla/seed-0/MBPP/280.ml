let rec sequential_search (dlist : int list) (item : int) :  bool * int =
  match dlist with
  | [] -> false, -1
  | head :: tail -> if (head = item) then true, (dlist.index head)
                 else sequential_search tail item

and index_in_list (dlist : int list) (item : int) : int =
  let rec search_pos (dlist : int list) (i : int) (item : int) : int =
    match dlist with
    | [] -> -1
    | head :: tail -> if (head = item) then i
                    else search_pos tail (i + 1) item
  in
    search_pos dlist 0 item


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function that takes in a list and element and returns a tuple containing a boolean that indicates if the element is in the list and the index position of the element (or -1 if the element is not found). *)
