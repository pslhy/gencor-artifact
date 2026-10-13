let rec max_of_nth (test_list : int list list) (n : int) : int = 
  let rec max_in_list (lst : int list) : int = 
    match lst with
    | [] -> failwith "Empty list"
    | x::xs -> List.fold_left max x xs in
  let rec nth_column (lst : int list list) (n : int) : int list = 
    match lst with
    | [] -> []
    | x::xs -> (try List.nth x n with Invalid_argument _ -> 0) :: nth_column xs n in
  max_in_list (nth_column test_list n)


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function which given a matrix represented as a list of lists returns the max of the n'th column. *)
