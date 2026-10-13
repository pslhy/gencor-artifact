let rec max_of_nth (test_list : int list list) (n : int) : int = 
  match test_list with
  | [] -> failwith "Empty matrix"
  | row :: rest ->
    let rec get_nth (lst : int list) (index : int) (acc : int) : int =
      match lst with
      | [] -> failwith "Column index out of range"
      | h :: t ->
        if index = n then
          max h acc
        else
          get_nth t (index + 1) acc
    in
    let col_max = get_nth row 0 Int.min_int in
    max col_max (max_of_nth rest n)


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function which given a matrix represented as a list of lists returns the max of the n'th column. *)
