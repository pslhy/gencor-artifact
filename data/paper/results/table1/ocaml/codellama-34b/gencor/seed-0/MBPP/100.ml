
let rec next_smallest_palindrome (num : int) : int =
    if num < 10 then num
    else
        let str_num = string_of_int num in
        let (reverse_str_num, n) =
            let rec aux (str, acc) =
                if String.length str = 0 then (acc, 0)
                else aux (String.sub str 1 (String.length str - 1), String.get str 0 ^ acc) in
        match new string_of_int (***ERROR*** : This expression has type string -> int -> int, This type is not suitable for an if expression. None of the variants of this type match the type of the expression :: *)
(**)

(**)

(**)

(**)

(**)

(**)

(**)

(**)

(**)

(**)

(**)

(**)

(**)

(**)

(**)

(**)

(**)

(**)

(**)

(**)

(**)

(**)

(**)

(**)

(**)

(**)

(**)

(**)

(**)

(**)

(**)

(**)

(**)

(**)

(**)

(**)

(**)

(**)

(**)

(**)

(**)

(**)

(**)

(**)

(**)

(**)

(**)

(**)

(**)

(**)

(**)

(**)

(**)

(**)

(**)

(**)

(**)

(**)

(**)

(**)

(**)

(**)

(**)

(**)

(**)

(**)

(**)

(**)

(**)

(**)

(**)

(**)

(**)

(**)

(**)

(**)

(**)

(**)

(**)

(**)

(**)

(**)

(**)

(**)

(**)

(**)

(**)

(**)

(**)

(**)

(**)

(**)

(**)

(**)

(**)

(**)

(**)

(**)

(**)

(**)

(**)

(**)

(**)

(**)

(**)

(**)

(**)

(**)

(**)

(**)

(**)

(**)

(**)

(**)

(**)

(**)

(**)

(**)

(**)

(**)

(**)

(**)

(**)

(**)

(**)

(**)

(**)

(**)

(**)

(**)

(**)

(**)

(**)

(**)

(**)

(**)

(**)

(**)

(**)

(**)

(**)

(**)

(**)

(**)

(**)

(**)

(**)

(**)

(**)

(**)

(**)

(**)

(**)

(**)

(**)

(**)

(**)

(**)

(**)

(**)

(**)

(**)

(**)

(**)

(**)

(**)

(**)

(**)

(**)

(**)

(**)

(**)

(**)

(**)

(**)

(**)

(**)

(**)

(**)

(**)

(**)

(**)

(**)

(**)

(**)

(**)

(**)

(**)

(**)

(**)

(**)

(**)

(**)

(**)

(**)

(**)

(**)

(**)

(**)

(**)

(**)

(**)

(**)

(**)

(**)

(**)

(**)

(**)

(**)

(**)

(**)

(**)

(**)

(**)

(**)

(**)

(**)

(**)

(**)

(**)

(**)

(**)

(**)

(**)

(**)

(**)

(**)

(**)

(**)

(**)

(**)

(**)

(**)

(**)

(**)

(**)

(**)

(**)

(**)

(**)

(**)

(**)

(**)

(**)

(**)

(**)

(**)

(**)

(**)

(**)

(**)

(**)

(**)

(**)

(**)

(**)

(**)

(**)

(**)

(**)

(**)

(**)

(**)

(**)

(**)

(**)

(**)

(**)

(**)

(**)

(**)

(**)

(**)

(**)

(**)

(**)

(**)

(**)

(**)

(**)

(**)

(**)


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find the next smallest palindrome of a specified integer, returned as an integer. *)
