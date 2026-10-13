
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
        n + 1 + (a. (List.length a) - n)

let count_Odd_Pair' (a : int list) : int =
    match a with
    | [] -> 0
    | h :: t -> 
        let n = count_Odd_Pair t in
        if h land 1 = 1 then
            1 + n
        else
            n

let rec oddPairs (a : int list) : int =
    match a with
    | [] -> 0
    | h :: t -> 
        if h land 1 = 1 then
            oddPairs t
        else
            1 + (a. (List.length a) - oddPairs t)

let rec oddPairs' (a : int list) : int =
    match a with
    | [] -> 0
    | h :: t -> 
        if h land 1 = 1 then
            1 + oddPairs' t
        else
            oddPairs' t

let rec findPairs (a : int list) : int list =
    match a with
    | [] -> []
    | h :: (2) -> 
        if h land 1 = 1 then
            findPairs (h :: 2)
        else
            h :: findPairs (h :: 2)

let rec findPairs' (a : int list) : int list =
    match a with
    | [] -> []
    | h :: t -> 
        if h land 1 = 1 then
            h :: findPairs' t
        else
            findPairs' t

(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to count the number of pairs whose xor value is odd. *)
