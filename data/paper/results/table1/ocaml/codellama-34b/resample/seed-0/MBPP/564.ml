(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a mlthon function which takes a list of integers and counts the number of possible unordered pairs where both elements are unequal. *)
let rec count_Pairs (arr : int list) (n : int) : int =
    match arr with
    | [] -> 0
    | h :: t -> 
        let count = count_Pairs t (n-1)
        if n = 0 then count
        else count - 1

let count_Unequal (arr : int list) : int =
    let n = List.length arr
    count_Pairs arr n

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:6:9: Syntax error *)
(*     Please regenerate the code, taking these errors into account. *)
let rec count_Pairs (arr : int list) (n : int) : int =
    match arr with
    | [] -> 0
    | h :: t -> 
        let count = count_Pairs t (n-1)
        if n = 0 then count
        else count + 1

(* === Turn 3 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:6:9: Syntax error *)
(*     Please regenerate the code, taking these errors into account. *)
let rec count_Pairs (arr : int list) (n : int) : int =
    match arr with
    | [] -> 0
    | h :: t -> 
        let count = count_Pairs t (n-1)
        in if n = 0 then count
        else count + 1

