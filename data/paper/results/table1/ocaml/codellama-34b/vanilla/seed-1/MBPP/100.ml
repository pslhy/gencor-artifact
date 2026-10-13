let rec next_smallest_palindrome (num : int) : int =
    let str = string_of_int num in
    let len = String.length str in
    let rec sub_palindrome (i : int) : string =
        if i >= (len / 2) then ""
        else (
            str.[i] = str.[len - i - 1] && sub_palindrome (i + 1)
        )
    in
    let rec find_palindrome (i : int) : int =
        if i = len - 1 then i
        else if sub_palindrome i then find_palindrome (i + 1)
        else find_palindrome (i - 1)
    in
    string_of_int (find_palindrome 1)

let res = next_smallest_palindrome 121
(* val res : int = 131 *)


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find the next smallest palindrome of a specified integer, returned as an integer. *)
