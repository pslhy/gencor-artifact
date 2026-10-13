let rec trim_tuple (test_list : int list list) (k : int) : int list list = 
    match test_list with
    | [] -> []
    | (h :: t) :: rest -> (List.take t k) @ (List.drop t k) :: trim_tuple rest k

let trim_lists (lists : int list list) (k : int) : int list list = 
    List.map (fun lst -> trim_tuple lst k) lists

let x = trim_lists [[1; 2; 3; 4; 5]; [1; 2; 3]] 2;;


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to trim each list by k in the given lists. *)
