let rec specialFilter (nums : int list) : int =
    match nums with
    | [] -> 0
    | x::xs -> 
        let strnum = string_of_int x in
        if abs(x) > 10 && (strnum.[0] = '1' || strnum.[0] = '3' || strnum.[0] = '5' || strnum.[0] = '7' || strnum.[0] = '9') 
        && (strnum.[String.length strnum - 1] = '1' || strnum.[String.length strnum - 1] = '3' || strnum.[String.length strnum - 1] = '5' || strnum.[String.length strnum - 1] = '7' || strnum.[String.length strnum - 1] = '9')
        then 1 + specialFilter xs
        else specialFilter xs

let test1 = specialFilter [15; (-73); 14; (-15)]
let test2 = specialFilter [33; (-2); (-3); 45; 21; 109]


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function that takes a list of numbers as input and returns *)
(*     the number of elements in the list that are greater than 10 and both *)
(*     first and last digits of a number are odd (1, 3, 5, 7, 9). *)
(*     For example: *)
(*     >>> specialFilter [15; (-73); 14; (-15)] *)
(*     1 *)
(*     >>> specialFilter [33; (-2); (-3); 45; 21; 109] *)
(*     2 *)
