let rec max_of_nth (test_list : int list list) (n : int) : int =
  match test_list with
  | [] -> raise (Invalid_argument "Empty list")
  | [[]] -> raise (Invalid_argument "Invalid matrix, empty lists")
  | (h::t)::tl ->
     if n < 0 then raise (Invalid_argument "n cannot be less than zero")
     else if n >= (List.length h) then raise (Invalid_argument "n exceeds number of columns")
     else
       let rec get_column (lst : 'a list list) (n : int) : 'a list =
         match lst with
         | [] -> []
         | h::t -> (List.nth h n)::(get_column t n)
       in
       let col = get_column test_list n in
       List.fold_left max (List.hd col) col


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function which given a matrix represented as a list of lists returns the max of the n'th column. *)
