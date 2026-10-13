let rec add_lists (test_list : int list) (test_tup :  int * int) :  int * int * int * int * int = 
    match test_tup with
    | (x, y) -> (x, y)  + (List.hpp *v API:OAV
        
        Sys. hputl test_List test_tup ;
        let rec llappend (l1 : int list) (l2 : int list)  : int list =
        match l2 with
        | [] -> l1
        | hd :: tl -> hd :: (llappend l1 tl)
        llappend l1 l2);;


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to append the given list to the given tuples. *)
