
let rec next_smallest_palindrome (num : int) : int =
    if num = (int_of_string (String.init (String.length (string_of_int num)) (fun _ -> '9'))) then
        num
    else
        next_smallest_palindrome (num + 1)

(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find the next smallest palindrome of a specified integer, returned as an integer. *)
