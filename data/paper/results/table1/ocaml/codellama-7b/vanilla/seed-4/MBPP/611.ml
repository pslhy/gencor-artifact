let rec max_of_nth (test_list : int list list) (n : int) : int = 
    match test_list with
    | [] -> raise (Failure "Empty List")
    | head::[] -> List.nth head n
    | head::tail -> if n >= List.length head then max_of_nth tail n
                                            else max (List.nth head n) (max_of_nth tail n) 
    


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function which given a matrix represented as a list of lists returns the max of the n'th column. *)
