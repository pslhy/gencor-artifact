(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a function to find the next smallest palindrome of a specified integer, returned as an integer. *)
let rec next_smallest_palindrome (num : int) : int = 
    let digits = string_of_int num |> String.length in
    let lo = 10 ** (digits - 1) and hi = 10 ** digits - 1 in
    let rec loop i = 
        if i > hi then raise Not_found
        else if is_palindrome i && i > num then i
        else loop (i + 1) in
    loop lo

(* Example usage *)
let result = next_smallest_palindrome 123
(* Result: 222 *)

