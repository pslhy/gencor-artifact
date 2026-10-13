(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a function to return the sum of all divisors of a number. *)
let rec sum_div (number : int) : int = 
    let divisors = 
        List.filter
            (fun (x : int) -> 
                x > 0 && number % x = 0)
            [1 .. number]
    in
    List.fold_left (+) 0 divisors

And here is the function to calculate the sum of all divisors of a number:
(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:6:16: Syntax error: "]" expected *)
(*     Please regenerate the code, taking these errors into account. *)
let rec sum_div (number : int) : int = 
    let divisors = 
        List.filter
            (fun (x : int) -> 
                x > 0 && number % x = 0)
            [1 .. number]
    in
    List.fold_left (+) 0 divisors

let main () = 
    let number = 10 in
    let divisors = sum_div number in
    Printf.printf "%d \n" divisors

let () = main ()

(* === Turn 3 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:6:16: Syntax error: "]" expected *)
(*     Please regenerate the code, taking these errors into account. *)
let rec sum_div (number : int) : int = 
    let divisors = 
        List.filter
            (fun (x : int) -> 
                x > 0 && number % x = 0)
            [1 .. number]
    in
    List.fold_left (+) 0 divisors

let main () = 
    let number = 10 in
    let divisors = sum_div number in
    Printf.printf "%d \n" divisors

let () = main ()

(* === Turn 4 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:6:16: Syntax error: "]" expected *)
(*     Please regenerate the code, taking these errors into account. *)
let rec sum_div (number : int) : int = 
    let divisors = 
        List.filter
            (fun (x : int) -> 
                x > 0 && number % x = 0)
            [1 .. number]
    in
    List.fold_left (+) 0 divisors

let main () = 
    let number = 10 in
    let divisors = sum_div number in
    Printf.printf "%d \n" divisors

let () = main ()

(* === Turn 5 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:6:16: Syntax error: "]" expected *)
(*     Please regenerate the code, taking these errors into account. *)
let rec sum_div (number : int) : int = 
    let divisors = 
        List.filter
            (fun (x : int) -> 
                x > 0 && number % x = 0)
            [1; number]
    in
    List.fold_left (+) 0 divisors

let main () = 
    let number = 10 in
    let divisors = sum_div number in
    Printf.printf "%d \n" divisors

let () = main ()

