(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a mlthon function to count the number of equal numbers from three given integers. *)
let rec test_three_equal (x : int) (y : int) (z : int) : int = 
    if x = y && x = z && y = z then 
        3 
    else 
        match x, y, z with 
        | x, x, x -> 3 
        | x, y, z -> test_three_equal x y z 
        | _ -> 0
end; ;;;

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:9:1: Syntax error *)
(*     Please regenerate the code, taking these errors into account. *)
let rec test_three_equal (x : int) (y : int) (z : int) : int = 
    if x = y && x = z && y = z then 
        3 
    else 
        match x, y, z with 
        | x, x, x -> 3 end

(* === Turn 3 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:6:24: Syntax error *)
(*     Please regenerate the code, taking these errors into account. *)
let rec test_three_equal (x : int) (y : int) (z : int) : int = 
    if x = y && y = z && x = z then 
        3 
    else 
        match x, y, z with 
        | x, x, x -> 3 
end;;

(* === Turn 4 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:7:1: Syntax error *)
(*     Please regenerate the code, taking these errors into account. *)
let rec test_three_equal (x : int) (y : int) (z : int) : int = 
    if x = y && y = z && x = z then 
        3 
    else 
        match x, y, z with 
        | x, x, x -> 3 end;;

(* === Turn 5 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:6:24: Syntax error *)
(*     Please regenerate the code, taking these errors into account. *)
let rec test_three_equal (x : int) (y : int) (z : int) : int = 
    if x = y && y = z && x = z then 
        3 
    else 
        match x, y, z with 
        | x, x, x -> 3 
end;;

