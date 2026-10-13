let rec count_bidirectional (test_list :  (int * int) list) : int =
    match test_list with 
    | [] -> 0 
    | (x,y)::rest -> let (xs,ys) = List.partition (fun (a,b) -> a = x || b = y) rest in
                          count_bidirectional xs + count_bidirectional ys + if x = y then 0 else 1


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to count bidirectional tuple pairs. *)
