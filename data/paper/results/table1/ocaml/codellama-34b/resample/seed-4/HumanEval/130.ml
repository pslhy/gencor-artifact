(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Everyone knows Fibonacci sequence, it was studied deeply by mathematicians in *)
(*     the last couple centuries. However, what people don't know is Tribonacci sequence. *)
(*     Tribonacci sequence is defined by the recurrence: *)
(*     tri(1) = 3 *)
(*     tri(n) = 1 + n / 2, if n is even. *)
(*     tri(n) =  tri(n - 1) + tri(n - 2) + tri(n + 1), if n is odd. *)
(*     For example: *)
(*     tri(2) = 1 + (2 / 2) = 2 *)
(*     tri(4) = 3 *)
(*     tri(3) = tri(2) + tri(1) + tri(4) *)
(*     = 2 + 3 + 3 = 8 *)
(*     You are given a non-negative integer number n, you have to a return a list of the *)
(*     first n + 1 numbers of the Tribonacci sequence. *)
(*     Examples: *)
(*     >>> tri 3 *)
(*     [1; 3; 2; 8] *)
let rec tri (n : int) : int list = 
    match n with
    | 1 -> [3]
    | n when n mod 2 = 0 -> [1; n / 2]
    | _ -> tri (n - 1) @ tri (n - 2) @ tri (n + 1) 

let recursion n = 
  if n < 0 
    then failwith "Error: n must be a non-negative integer" 
    else tri n |> List.ofSeq

recursion 3 // [1; 3; 2; 8]

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:12:13: Unbound value "(//)" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec tri (n : int) : int list =
    match n with
    | 1 -> [3]
    | n when n mod 2 = 0 -> [1; n / 2]
    | _ -> tri (n - 1) @ tri (n - 2) @ tri (n + 1)

let rec tn (n : int) : int list =
    match n with
    | 0 -> [1]
    | n when n mod 2 = 0 -> [1; n / 2]
    | _ -> tn (n - 1) @ tn (n - 2) @ tn (n + 1)

let recursion (n : int) : int list =
    if n < 0 then failwith "Error: n must be a non-negative integer"
    else tri n |> List.ofSeq

let recursive (n : int) : int list =
    if n < 0 then failwith "Error: n must be a non-negative integer"
    else tn n |> List.ofSeq

let recursive_sum (n : int) : int =
    if n < 0 then failwith "Error: n must be a non-negative integer"
    else (List.hd (tn n) + List.hd (tri n))

(* === Turn 3 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:15:19: Unbound value "List.ofSeq" *)
(*     Hint: Did you mean "of_seq"? *)
(*     Please regenerate the code, taking these errors into account. *)
let rec tri (n : int) : int list =
    match n with
    | 1 -> [3]
    | n when n mod 2 = 0 -> [1; n / 2]
    | _ -> tri (n - 1) @ tri (n - 2) @ tri (n + 1)

let rec tn (n : int) : int list =
    match n with
    | 0 -> [1]
    | n when n mod 2 = 0 -> [1; n / 2]
    | _ -> tn (n - 1) @ tn (n - 2) @ tn (n + 1)

let recursion (n : int) : int list =
    if n < 0 then failwith "Error: n must be a non-negative integer"
    else tri n |> List.of_seq

let recursive (n : int) : int list =
    if n < 0 then failwith "Error: n must be a non-negative integer"
    else tn n |> List.of_seq

let recursive_sum (n : int) : int =
    if n < 0 then failwith "Error: n must be a non-negative integer"
    else (List.hd (tn n) + List.hd (tri n))

