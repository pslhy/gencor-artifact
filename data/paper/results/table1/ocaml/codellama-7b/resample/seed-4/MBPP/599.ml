(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a function to find sum and average of first n natural numbers. *)
let rec sum_average (number : int) :  int * float = 
    let rec sum_loop (n : int) (sum : int) : int = 
        match n with 
        | 0 -> sum
        | n -> sum_loop (n-1) (sum + n)
    in 
    let sum : int = 
    sum_loop number 0 
    in 
    let average : float = 
    (float_of_int sum) /. (float_of_int number) 
    in 
    (sum, average)
);;

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:14:1: Syntax error *)
(*     Please regenerate the code, taking these errors into account. *)
let rec sum_average (number : int) :  int * float = 
    let rec sum_loop (n : int) (sum : int) : int = 
        if n == 0
        then sum
        else sum_loop (n-1) (sum + n)
    in 
    let sum : int = 
    sum_loop number 0 
    in 
    let average : float = 
    (float_of_int sum) /. (float_of_int number) 
    in 
    (sum, average)
);;

(* === Turn 3 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:14:1: Syntax error *)
(*     Please regenerate the code, taking these errors into account. *)
let rec sum_average (number : int) :  int * float = 
    let rec sum_loop (n : int) (sum : int) : int = 
        if n = 0
        then sum
        else sum_loop (n-1) (sum + n)
    in 
    let sum : int = 
    sum_loop number 0 
    in 
    let average : float = 
    (float_of_int sum) /. (float_of_int number) 
    in 
    (sum, average)
);;

(* === Turn 4 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:14:1: Syntax error *)
(*     Please regenerate the code, taking these errors into account. *)
let rec sum_average (number : int) :  int * float = 
    let rec sum_loop (n : int) (sum : int) : int = 
        if n = 0 
        then sum 
        else sum_loop (n-1) (sum + n) 
    in 
    let sum : int = 
    sum_loop number 0 
    in 
    let average : float = 
    (float_of_int sum) /. (float_of_int number) 
    in 
    (sum, average)
);;

(* === Turn 5 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:14:1: Syntax error *)
(*     Please regenerate the code, taking these errors into account. *)
let rec sum_average (number : int) :  int * float = 
    let rec sum_loop (n : int) (sum : int) : int = 
        if n = 0 
        then sum 
        else sum_loop (n-1) (sum + n) 
    in 
    let sum : int = 
    sum_loop number 0 
    in 
    let average : float = 
    (float_of_int sum) /. (float_of_int number) 
    in 
    (sum, average)
);;

