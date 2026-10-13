(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a mlthon function that takes in a non-negative number and returns the number of prime numbers less than the given non-negative number. *)
let rec count_Primes_nums (n : int) : int =
    match n with
    | 0 | 1 -> 0
    | _ ->
        let rec loop acc i =
            if i >= n then acc
            else if is_Prime i then loop (acc + 1) (i + 1)
            else loop acc (i + 1)
        in loop 0 2

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:7:21: Unbound value "is_Prime" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec count_Primes_nums (n : int) : int =
    match n with
    | 0 | 1 -> 0
    | _ ->
        let rec loop acc i =
            if i >= n then acc
            else if i < 2 then loop acc (i + 1)
            else loop (acc + 1) (i + 1)
        in loop 0 2

