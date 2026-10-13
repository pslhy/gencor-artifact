let rec get_coordinates (test_tup :  int * int) : int list list = 
    let (x, y) = tup in
    let coordlist = [1, 0; -1, 0; 0, 1; 0, -1] in
    let rec list_rec (ls : int list) : int list = 
        match ls with
        | [] -> []
        | h :: t -> h + x :: h + y :: list_rec t
    in
    list_rec coordlist


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to extract all the adjacent coordinates of the given coordinate tuple. *)
