let rec max_of_nth (test_list : int list list) (n : int) : int =
  match test_list with
  | [] -> invalid_arg "Empty list"
  | x :: xs ->
      if n < 0 || n >= List.length x then invalid_arg "Out of bounds"
      else List.nth x n
    in
    let rec aux acc (test_list : int list list) (n : int) : int =
      match test_list with
      | [] -> acc
      | x :: xs ->
          let new_acc = max (List.nth x n) acc in
          aux new_acc xs n
    in
    aux (List.nth x n) test_list n


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function which given a matrix represented as a list of lists returns the max of the n'th column. *)
