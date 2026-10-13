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
    | 0 | 1 -> 0 (* base case *)
    | _ -> n * (n + 1)
        
let sum_squares (n : int) : int = 
    Seq.init n (fun x -> x * 2 + 1) 
    |> square_Sum
 
sum_squares;;

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:10:1: Unbound value "sum_squares" *)
(*     Hint: If this is a recursive definition, *)
(*     you should add the "rec" keyword on line 6 *)
(*     Please regenerate the code, taking these errors into account. *)
let rec square_Sum (n : int) : int = 
    match n with 
    | 0 | 1 -> 0 (* base case *)
    | _ -> n * (n + 1)
        
let sum_squares (n : int) : int = 
    Seq.init n (fun x -> x * 2 + 1) 
    |> square_Sum

let test () : unit = 
    Printf.printf "Sum of squares of first 5 even numbers is: %d\n" (sum_squares 5)

let () = 
    test ()

