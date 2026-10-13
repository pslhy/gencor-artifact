let rec union_elements (test_tup1 : int list) (test_tup2 : int list) : int list =  
    let rec helper a b =   
    match a, b with  
    | [], _ -> b  
    | _, [] -> a  
    | x::xs, y::ys ->  
        if x < y then x :: helper xs (y::ys)  
        else if x > y then y :: helper a ys  
        else x :: helper xs ys  
    in  
    helper (List.sort compare test_tup1) (List.sort compare test_tup2)  


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find the union of the elements of two given lists and output them in sorted order. *)
