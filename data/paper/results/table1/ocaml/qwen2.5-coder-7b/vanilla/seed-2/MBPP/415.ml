let rec max_Product (arr : int list) :  int * int = 
    let rec find_two_max lst max1 max2 = 
        match lst with
        | [] -> (max1, max2)
        | h::t -> 
            if h > max1 then find_two_max t h max1 
            else if h > max2 then find_two_max t max1 h 
            else find_two_max t max1 max2
    in let max1, max2 = find_two_max arr Int.min_int Int.min_int 
    in let rec find_two_min lst min1 min2 = 
        match lst with
        | [] -> (min1, min2)
        | h::t -> 
            if h < min1 then find_two_min t h min1 
            else if h < min2 then find_two_min t min1 h 
            else find_two_min t min1 min2
    in let min1, min2 = find_two_min arr Int.max_int Int.max_int 
    in if max1 * max2 > min1 * min2 then (max1, max2) else (min1, min2)


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to find a pair with highest product from a given list of integers. *)
