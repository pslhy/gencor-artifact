
let rec odd_Equivalent (s : string) (n : int) : int =
    if n <= 0 then
        0
    else if s = "1" then
        1 + odd_Equivalent "1" (n - 1)
    else if s = "0" then
        odd_Equivalent "0" (n - 1)
    else
        let len = String.length s in
        let s' = String.sub s 1 (len - 1) in
        odd_Equivalent s' (n - 1)

let odd_rotation (s : string) (n : int) : int =
    let len = String.length s in
    let rec loop (i : int) (acc : int) : int =
        if i >= len then
            acc
        else
            let first = String.sub s 0 i in
            let rest = String.sub s (i + 1) (len - i - 1) in
            loop (i + 1) (acc + odd_Equivalent (first ^ rest))
    in
    loop 0 0

(* Example usage *)
let result = odd_rotation "1010" 2

(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to find the number of numbers with an odd value when rotating a binary string the given number of times. *)
