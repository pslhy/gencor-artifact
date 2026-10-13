(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a function to check whether the product of numbers in a list is even or not. *)
let rec is_product_even (arr : int list) : bool = 
    match arr with 
    | head :: tail -> 
            (match tail with 
                | [] -> head % 2 = 0 
                | _ -> head * is_product_even tail) 
        | _ -> true 
    end
;;

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:8:5: Syntax error *)
(*     Please regenerate the code, taking these errors into account. *)
let rec is_product_even (arr : int list) : bool = 
    match arr with 
    | head :: tail -> 
            (match tail with 
                | [] -> head % 2 = 0 
                | _ -> head * is_product_even tail) 
        | _ -> true 
    end
;;

(* === Turn 3 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:8:5: Syntax error *)
(*     Please regenerate the code, taking these errors into account. *)
let rec is_product_even (arr : int list) : bool = 
    match arr with
    | head :: tail -> 
        if tail = [] then
            head % 2 = 0
        else
            head * is_product_even tail
    | [] -> true 
    end
;;

(* === Turn 4 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:9:5: Syntax error *)
(*     Please regenerate the code, taking these errors into account. *)
let rec is_product_even (arr : int list) : bool = 
    match arr with
    | head :: tail -> 
        if tail = [] then
            head % 2 = 0
        else
            head * is_product_even tail
    | [] -> true 
    end
;;

(* === Turn 5 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:9:5: Syntax error *)
(*     Please regenerate the code, taking these errors into account. *)
let rec is_product_even (arr : int list) : bool = 
    match arr with
    | head :: tail -> 
        if tail = [] then
            head % 2 = 0
        else
            head * is_product_even tail
    | [] -> true 
    end;;

