let rec max_Product (arr : int list) :  int * int = 
    let rec helper arr max1 max2 = 
        match arr with
        | [] -> (max1, max2)
        | h::t -> 
            if h >= max1 then helper t h max1
            else if h >= max2 then helper t max1 h
            else helper t max1 max2
    in
    helper (List.sort (fun x y -> y - x) arr) 0 0


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to find a pair with highest product from a given list of integers. *)
