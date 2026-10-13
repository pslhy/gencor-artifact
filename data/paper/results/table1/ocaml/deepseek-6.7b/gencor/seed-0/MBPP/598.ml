
let rec armstrong_number (number : int) : bool =
    let num = String.length (string_of_int number) in
    let rec helper (n : int) (num : int) : int =
        if n = 0 then 0 else (int_of_string (String.make 1 (string_of_int n).[0]) ** num) + helper (n / 10) num in
    number = helper number num

(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to check whether the given number is armstrong or not. *)
