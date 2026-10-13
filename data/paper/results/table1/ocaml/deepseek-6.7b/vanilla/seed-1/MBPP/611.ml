let rec max_of_nth (test_list : int list list) (n : int) : int =
  match test_list with
  | [] -> raise (Invalid_argument "List cannot be empty")
  | h::t -> if n < 0 then 
                raise (Invalid_argument "Index cannot be negative")
            else if n = 0 then 
                List.fold_left max (List.hd h) (List.tl h)
            else 
                max_of_nth (List.map List.tl test_list) (n-1)


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function which given a matrix represented as a list of lists returns the max of the n'th column. *)
