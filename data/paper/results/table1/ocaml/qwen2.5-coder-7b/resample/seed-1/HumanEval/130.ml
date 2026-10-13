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
  let rec trib (a: int) (b: int) (c: int) (n: int) acc : int list =
    if n < 0 then acc
    else trib b c (a + b + c) (n - 1) (c :: acc)
  in List.rev (trib 1 3 2 n [])

let tri (n : int) : int list = 
  let rec aux n acc =
    if n < 0 then acc
    else aux (n - 1) (trib n :: acc)
  in List.rev (aux n [])

let tri (n : int) : int list = 
  let rec aux n acc =
    if n < 0 then acc
    else aux (n - 1) ((if n mod 2 = 0 then 1 + n / 2 else (if n = 1 then 3 else List.nth acc (n - 3) + List.nth acc (n - 2) + List.nth acc n)) :: acc)
  in List.rev (aux n [])


(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:10:23: Unbound value "trib" *)
(*     Hint: Did you mean "tri"? *)
(*     Please regenerate the code, taking these errors into account. *)
let rec tri (n : int) : int list = 
  let rec trib (a: int) (b: int) (c: int) (n: int) acc : int list =
    if n < 0 then acc
    else trib b c (a + b + c) (n - 1) (c :: acc)
  in List.rev (trib 1 3 2 n [])

let tri (n : int) : int list = 
  let rec aux n acc =
    if n < 0 then acc
    else aux (n - 1) (tri n :: acc)
  in List.rev (aux n [])

let tri (n : int) : int list = 
  let rec aux n acc =
    if n < 0 then acc
    else aux (n - 1) ((if n mod 2 = 0 then 1 + n / 2 else (if n = 1 then 3 else List.nth acc (n - 3) + List.nth acc (n - 2) + List.nth acc n)) :: acc)
  in List.rev (aux n [])

