let rec max_length (list1 : int list list) :  int * int list = 
    let rec find_max_length acc lengths = 
        match lengths with 
        | [] -> acc 
        | x::xs -> find_max_length (max x acc) xs 
    in 
    let lengths = 
        List.map (fun lst -> List.length lst) list1 
    in 
    find_max_length 0 lengths 


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find the list of maximum length in a list of lists. *)
