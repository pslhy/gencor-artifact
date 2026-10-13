let rec add_tuple (test_list : int list) (test_tup :  int * int) : int list =
    match test_list with
    | [] -> test_tup :: []
    | h :: t -> if h = fst test_tup then (0, snd test_tup) :: t
                            else (h, 0) :: add_tuple t test_tup


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to add the given tuple to the given list. *)
