let rec new_tuple (test_list : string list) (test_str : string) :  string * string * string = 
    match test_list with
    | [] -> ([], [], "")
    | h::t -> 
        let (xs, ys, z) = new_tuple t test_str in
        (h::xs, ys, z^h^test_str)


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to create a new tuple from the given string and list. *)
