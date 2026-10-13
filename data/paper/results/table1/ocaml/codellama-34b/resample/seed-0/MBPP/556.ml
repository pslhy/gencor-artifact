(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a mlthon function to count the number of pairs whose xor value is odd. *)
let rec find_Odd_Pair (a : int list) (n : int) : int =
    match a with
    | [] -> 0
    | h :: t -> 
        if (h land 1) = (n land 1) then
            1 + find_Odd_Pair t n
        else
            0

let count_Odd_Pair (a : int list) : int =
    match a with
    | [] -> 0
    | h :: t -> 
        let n = find_Odd_Pair a h in
        n + count_Odd_Pair t

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:15:13: Unbound value "count_Odd_Pair" *)
(*     Hint: If this is a recursive definition, *)
(*     you should add the "rec" keyword on line 10 *)
(*     Please regenerate the code, taking these errors into account. *)
let rec find_Odd_Pair (a : int list) (n : int) : int =
    match a with
    | [] -> 0
    | h :: t -> 
        if (h land 1) = (n land 1) then
            1 + find_Odd_Pair t n
        else
            0

let rec count_Odd_Pair (a : int list) : int =
    match a with
    | [] -> 0
    | h :: t -> 
        let n = find_Odd_Pair a h in
        n + count_Odd_Pair t

let total_Odd_Pair (a : int list) : int = 
    let rec loop (a : int list) (acc : int) : int =
        match a with
        | [] -> acc
        | h :: t -> loop t (acc + count_Odd_Pair t)
    in loop a 0

