let rec max_of_nth (test_list : int list list) (n : int) : int =
  match test_list with
  | [] -> failwith "Empty list"
  | h::t -> let rec helper (l : int list) (m : int) : int =
                match l with
                | [] -> m
                | h1::t1 -> if h1 > m then helper t1 h1 else helper t1 m
            in helper (List.nth h n) (List.nth h n);;


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function which given a matrix represented as a list of lists returns the max of the n'th column. *)
