let rec add_nested_tuples (test_tup1 : int list list) (test_tup2 : int list list) : int list list = 
    (* Iterate through both nested lists simultaneously and perform index wise addition of list elements *)
    match test_tup1, test_tup2 with
    | [], [] -> [] (* Base case when both lists are empty *)
    | [], _ | _, [] -> raise (Invalid_argument "Lists must have the same length") (* Base case when one list is empty and the other is not *)
    | (hd1 :: tl1), (hd2 :: tl2) -> (hd1 + hd2) :: add_nested_tuples tl1 tl2 (* Perform addition of list elements and recursive call to add remaining elements *)


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to perform index wise addition of list elements in the given two nested lists. *)
