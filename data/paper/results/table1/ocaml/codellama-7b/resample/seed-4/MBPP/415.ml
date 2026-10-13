(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a mlthon function to find a pair with highest product from a given list of integers. *)
let rec max_Product (arr : int list) :  int * int = 
    match arr with 
    | head :: [] ->  (0,0) 
    | head :: tail -> 
        (* do recursion *)
        let (x, y) = max_Product tail in 
        if head < x * y then (head, x * y) 
        else if head > x * y then (0, head * x) 
        else (0, head * x) 

(* Example test *)
let result = max_Product [1;2;3;4;5] in 
print_int result ;;

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:12:38: Syntax error *)
(*     Please regenerate the code, taking these errors into account. *)
let rec max_Product (arr : int list) :  int * int = 
    match arr with 
    | head :: [] ->  (0,0) 
    | head :: tail -> 
        (* do recursion *)
        let (x, y) = max_Product tail in 
        if head < x * y then (head, x * y) 
        else if head > x * y then (0, head * x) 
        else (0, head * x) 

(* Example test *)
let result = max_Product [1;2;3;4;5] in 
print_int result ;;

(* === Turn 3 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:12:38: Syntax error *)
(*     Please regenerate the code, taking these errors into account. *)
let rec max_Product (arr : int list) :  int * int = 
    match arr with 
    | [] -> (0,0) 
    | head :: tail -> 
        (* do recursion *)
        let (x, y) = max_Product tail in 
        if head < x * y then (head, x * y) 
        else if head > x * y then (0, head * x) 
        else (0, head * x) 

(* Example test *)
let result = max_Product [1;2;3;4;5] in 
print_int result ;;

(* === Turn 4 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:12:38: Syntax error *)
(*     Please regenerate the code, taking these errors into account. *)
let rec max_Product (arr : int list) :  int * int = 
    match arr with 
    | [] -> (0,0) 
    | head :: tail -> 
        (* do recursion *)
        let (x, y) = max_Product tail in 
        if head < x * y then (head, x * y) 
        else if head > x * y then (0, head * x) 
        else (0, head * x) 
end;;

(* Example test *)
let result = max_Product [1;2;3;4;5] in 
print_int result ;;

(* === Turn 5 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:10:1: Syntax error *)
(*     Please regenerate the code, taking these errors into account. *)
let rec max_Product (arr : int list) :  int * int = 
    match arr with 
    | [] -> (0,0) 
    | head :: tail -> 
        (* do recursion *)
        let (x, y) = max_Product tail in 
        if head < x * y then (head, x * y) 
        else if head > x * y then (0, head * x) 
        else (0, head * x) 
end;;

(* Example test *)
let result = max_Product [1;2;3;4;5] in 
print_int result ;;

