let rec add_pairwise (test_tup :  int * int * int * int * int) :  int * int * int * int =
    match test_tup with
    | (x,y,z,_,_) ->
        (x+y, y+z, z+_, _)
    | _ -> failwith "Not a valid tuple"


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find the pairwise addition of the neighboring elements of the given tuple. *)
