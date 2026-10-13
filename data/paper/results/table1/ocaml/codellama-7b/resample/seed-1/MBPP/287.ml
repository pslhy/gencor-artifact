(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a mlthon function takes in an integer n and returns the sum of squares of first n even natural numbers. *)
let rec square_Sum (n : int) : int =
    match n with
    | 0 -> 0
    | _ -> n * (n + 1)

let sum_of_squares (n : int) : int =
    List.fold_left (fun acc x -> acc + (square x)) 0 (List.init n (fun i -> i * 2))

let sum_of_even_squares =
    fun x -> sum_of_squares (x / 2) * 2

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:7:41: Unbound value "square" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec square_Sum (n : int) : int = 
    assert (n >= 0); 
    match n with 
    | 0 -> 0 
    | _ -> n * (square_Sum (n - 1)) 

let sum_of_squares (n : int) : int = 
    if n = 0 then 
        0 
    else 
        square_Sum (n - 1) + square (n - 1) 

let main () = 
    assert (sum_of_squares 10 = 385); 
    0 

let _ = main ();;

(* === Turn 3 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:11:30: Unbound value "square" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec square_Sum (n : int) : int = 
    assert (n >= 0); 
    match n with 
    | 0 -> 0 
    | _ -> n * (square_Sum (n - 1)) 

let sum_of_squares (n : int) : int = 
    if n = 0 then 
        0 
    else 
        square_Sum (n - 1) + (n - 1) * (n - 1) 

let main () = 
    assert (sum_of_squares 10 = 385); 
    0 

let _ = main ();;

