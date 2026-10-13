(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a function that takes a list of numbers as input and returns *)
(*     the number of elements in the list that are greater than 10 and both *)
(*     first and last digits of a number are odd (1, 3, 5, 7, 9). *)
(*     For example: *)
(*     >>> specialFilter [15; (-73); 14; (-15)] *)
(*     1 *)
(*     >>> specialFilter [33; (-2); (-3); 45; 21; 109] *)
(*     2 *)
let rec specialFilter (nums : int list) : int = 
    match nums with
    | head :: tail -> 
        (match head with
         | n when n > 10 && n % 10 = n / 10 -> 1 + specialFilter tail
         | _ -> specialFilter tail)
    | [] -> 0

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:5:31: Unbound value "(%)" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec specialFilter (nums : int list) : int =
    match nums with
    | [] -> 0
    | head :: tail ->
        if head > 10 && head mod 10 = head / 10 then
            1 + specialFilter tail
        else
            specialFilter tail

